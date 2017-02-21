module AWS.Services.Route53Domains
    exposing
        ( config
        , checkDomainAvailability
        , CheckDomainAvailabilityOptions
        , deleteTagsForDomain
        , disableDomainAutoRenew
        , disableDomainTransferLock
        , enableDomainAutoRenew
        , enableDomainTransferLock
        , getContactReachabilityStatus
        , GetContactReachabilityStatusOptions
        , getDomainDetail
        , getDomainSuggestions
        , getOperationDetail
        , listDomains
        , ListDomainsOptions
        , listOperations
        , ListOperationsOptions
        , listTagsForDomain
        , registerDomain
        , RegisterDomainOptions
        , renewDomain
        , RenewDomainOptions
        , resendContactReachabilityEmail
        , ResendContactReachabilityEmailOptions
        , retrieveDomainAuthCode
        , transferDomain
        , TransferDomainOptions
        , updateDomainContact
        , UpdateDomainContactOptions
        , updateDomainContactPrivacy
        , UpdateDomainContactPrivacyOptions
        , updateDomainNameservers
        , UpdateDomainNameserversOptions
        , updateTagsForDomain
        , UpdateTagsForDomainOptions
        , viewBilling
        , ViewBillingOptions
        , BillingRecord
        , CheckDomainAvailabilityResponse
        , ContactDetail
        , ContactType(..)
        , CountryCode(..)
        , DeleteTagsForDomainResponse
        , DisableDomainAutoRenewResponse
        , DisableDomainTransferLockResponse
        , DomainAvailability(..)
        , DomainLimitExceeded
        , DomainSuggestion
        , DomainSummary
        , DuplicateRequest
        , EnableDomainAutoRenewResponse
        , EnableDomainTransferLockResponse
        , ExtraParam
        , ExtraParamName(..)
        , GetContactReachabilityStatusResponse
        , GetDomainDetailResponse
        , GetDomainSuggestionsResponse
        , GetOperationDetailResponse
        , InvalidInput
        , ListDomainsResponse
        , ListOperationsResponse
        , ListTagsForDomainResponse
        , Nameserver
        , OperationLimitExceeded
        , OperationStatus(..)
        , OperationSummary
        , OperationType(..)
        , ReachabilityStatus(..)
        , RegisterDomainResponse
        , RenewDomainResponse
        , ResendContactReachabilityEmailResponse
        , RetrieveDomainAuthCodeResponse
        , TLDRulesViolation
        , Tag
        , TransferDomainResponse
        , UnsupportedTLD
        , UpdateDomainContactPrivacyResponse
        , UpdateDomainContactResponse
        , UpdateDomainNameserversResponse
        , UpdateTagsForDomainResponse
        , ViewBillingResponse
        )

{-| undefined

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [checkDomainAvailability](#checkDomainAvailability)
* [CheckDomainAvailabilityOptions](#CheckDomainAvailabilityOptions)
* [deleteTagsForDomain](#deleteTagsForDomain)
* [disableDomainAutoRenew](#disableDomainAutoRenew)
* [disableDomainTransferLock](#disableDomainTransferLock)
* [enableDomainAutoRenew](#enableDomainAutoRenew)
* [enableDomainTransferLock](#enableDomainTransferLock)
* [getContactReachabilityStatus](#getContactReachabilityStatus)
* [GetContactReachabilityStatusOptions](#GetContactReachabilityStatusOptions)
* [getDomainDetail](#getDomainDetail)
* [getDomainSuggestions](#getDomainSuggestions)
* [getOperationDetail](#getOperationDetail)
* [listDomains](#listDomains)
* [ListDomainsOptions](#ListDomainsOptions)
* [listOperations](#listOperations)
* [ListOperationsOptions](#ListOperationsOptions)
* [listTagsForDomain](#listTagsForDomain)
* [registerDomain](#registerDomain)
* [RegisterDomainOptions](#RegisterDomainOptions)
* [renewDomain](#renewDomain)
* [RenewDomainOptions](#RenewDomainOptions)
* [resendContactReachabilityEmail](#resendContactReachabilityEmail)
* [ResendContactReachabilityEmailOptions](#ResendContactReachabilityEmailOptions)
* [retrieveDomainAuthCode](#retrieveDomainAuthCode)
* [transferDomain](#transferDomain)
* [TransferDomainOptions](#TransferDomainOptions)
* [updateDomainContact](#updateDomainContact)
* [UpdateDomainContactOptions](#UpdateDomainContactOptions)
* [updateDomainContactPrivacy](#updateDomainContactPrivacy)
* [UpdateDomainContactPrivacyOptions](#UpdateDomainContactPrivacyOptions)
* [updateDomainNameservers](#updateDomainNameservers)
* [UpdateDomainNameserversOptions](#UpdateDomainNameserversOptions)
* [updateTagsForDomain](#updateTagsForDomain)
* [UpdateTagsForDomainOptions](#UpdateTagsForDomainOptions)
* [viewBilling](#viewBilling)
* [ViewBillingOptions](#ViewBillingOptions)


@docs checkDomainAvailability,CheckDomainAvailabilityOptions,deleteTagsForDomain,disableDomainAutoRenew,disableDomainTransferLock,enableDomainAutoRenew,enableDomainTransferLock,getContactReachabilityStatus,GetContactReachabilityStatusOptions,getDomainDetail,getDomainSuggestions,getOperationDetail,listDomains,ListDomainsOptions,listOperations,ListOperationsOptions,listTagsForDomain,registerDomain,RegisterDomainOptions,renewDomain,RenewDomainOptions,resendContactReachabilityEmail,ResendContactReachabilityEmailOptions,retrieveDomainAuthCode,transferDomain,TransferDomainOptions,updateDomainContact,UpdateDomainContactOptions,updateDomainContactPrivacy,UpdateDomainContactPrivacyOptions,updateDomainNameservers,UpdateDomainNameserversOptions,updateTagsForDomain,UpdateTagsForDomainOptions,viewBilling,ViewBillingOptions

## Responses

* [CheckDomainAvailabilityResponse](#CheckDomainAvailabilityResponse)
* [DeleteTagsForDomainResponse](#DeleteTagsForDomainResponse)
* [DisableDomainAutoRenewResponse](#DisableDomainAutoRenewResponse)
* [DisableDomainTransferLockResponse](#DisableDomainTransferLockResponse)
* [EnableDomainAutoRenewResponse](#EnableDomainAutoRenewResponse)
* [EnableDomainTransferLockResponse](#EnableDomainTransferLockResponse)
* [GetContactReachabilityStatusResponse](#GetContactReachabilityStatusResponse)
* [GetDomainDetailResponse](#GetDomainDetailResponse)
* [GetDomainSuggestionsResponse](#GetDomainSuggestionsResponse)
* [GetOperationDetailResponse](#GetOperationDetailResponse)
* [ListDomainsResponse](#ListDomainsResponse)
* [ListOperationsResponse](#ListOperationsResponse)
* [ListTagsForDomainResponse](#ListTagsForDomainResponse)
* [RegisterDomainResponse](#RegisterDomainResponse)
* [RenewDomainResponse](#RenewDomainResponse)
* [ResendContactReachabilityEmailResponse](#ResendContactReachabilityEmailResponse)
* [RetrieveDomainAuthCodeResponse](#RetrieveDomainAuthCodeResponse)
* [TransferDomainResponse](#TransferDomainResponse)
* [UpdateDomainContactPrivacyResponse](#UpdateDomainContactPrivacyResponse)
* [UpdateDomainContactResponse](#UpdateDomainContactResponse)
* [UpdateDomainNameserversResponse](#UpdateDomainNameserversResponse)
* [UpdateTagsForDomainResponse](#UpdateTagsForDomainResponse)
* [ViewBillingResponse](#ViewBillingResponse)


@docs CheckDomainAvailabilityResponse,DeleteTagsForDomainResponse,DisableDomainAutoRenewResponse,DisableDomainTransferLockResponse,EnableDomainAutoRenewResponse,EnableDomainTransferLockResponse,GetContactReachabilityStatusResponse,GetDomainDetailResponse,GetDomainSuggestionsResponse,GetOperationDetailResponse,ListDomainsResponse,ListOperationsResponse,ListTagsForDomainResponse,RegisterDomainResponse,RenewDomainResponse,ResendContactReachabilityEmailResponse,RetrieveDomainAuthCodeResponse,TransferDomainResponse,UpdateDomainContactPrivacyResponse,UpdateDomainContactResponse,UpdateDomainNameserversResponse,UpdateTagsForDomainResponse,ViewBillingResponse

## Records

* [BillingRecord](#BillingRecord)
* [ContactDetail](#ContactDetail)
* [DomainSuggestion](#DomainSuggestion)
* [DomainSummary](#DomainSummary)
* [ExtraParam](#ExtraParam)
* [Nameserver](#Nameserver)
* [OperationSummary](#OperationSummary)
* [Tag](#Tag)


@docs BillingRecord,ContactDetail,DomainSuggestion,DomainSummary,ExtraParam,Nameserver,OperationSummary,Tag

## Unions

* [ContactType](#ContactType)
* [CountryCode](#CountryCode)
* [DomainAvailability](#DomainAvailability)
* [ExtraParamName](#ExtraParamName)
* [OperationStatus](#OperationStatus)
* [OperationType](#OperationType)
* [ReachabilityStatus](#ReachabilityStatus)


@docs ContactType,CountryCode,DomainAvailability,ExtraParamName,OperationStatus,OperationType,ReachabilityStatus

## Exceptions

* [DomainLimitExceeded](#DomainLimitExceeded)
* [DuplicateRequest](#DuplicateRequest)
* [InvalidInput](#InvalidInput)
* [OperationLimitExceeded](#OperationLimitExceeded)
* [TLDRulesViolation](#TLDRulesViolation)
* [UnsupportedTLD](#UnsupportedTLD)


@docs DomainLimitExceeded,DuplicateRequest,InvalidInput,OperationLimitExceeded,TLDRulesViolation,UnsupportedTLD

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
        "route53domains"
        "2014-05-15"
        "1.1"
        "AWSROUTE53DOMAINS_20140515."
        "route53domains.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>This operation checks the availability of one domain name. Note that if the availability status of a domain is pending, you must submit another request to determine the availability of the domain name.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
checkDomainAvailability :
    String
    -> (CheckDomainAvailabilityOptions -> CheckDomainAvailabilityOptions)
    -> AWS.Http.UnsignedRequest CheckDomainAvailabilityResponse
checkDomainAvailability domainName setOptions =
  let
    options = setOptions (CheckDomainAvailabilityOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CheckDomainAvailability"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        checkDomainAvailabilityResponseDecoder


{-| Options for a checkDomainAvailability request
-}
type alias CheckDomainAvailabilityOptions =
    { idnLangCode : Maybe String
    }



{-| <p>This operation deletes the specified tags for a domain.</p> <p>All tag operations are eventually consistent; subsequent operations may not immediately represent all issued operations.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `tagsToDelete` __:__ `(List String)`


-}
deleteTagsForDomain :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest DeleteTagsForDomainResponse
deleteTagsForDomain domainName tagsToDelete =
    AWS.Http.unsignedRequest
        "DeleteTagsForDomain"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteTagsForDomainResponseDecoder



{-| <p>This operation disables automatic renewal of domain registration for the specified domain.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
disableDomainAutoRenew :
    String
    -> AWS.Http.UnsignedRequest DisableDomainAutoRenewResponse
disableDomainAutoRenew domainName =
    AWS.Http.unsignedRequest
        "DisableDomainAutoRenew"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disableDomainAutoRenewResponseDecoder



{-| <p>This operation removes the transfer lock on the domain (specifically the <code>clientTransferProhibited</code> status) to allow domain transfers. We recommend you refrain from performing this action unless you intend to transfer the domain to a different registrar. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
disableDomainTransferLock :
    String
    -> AWS.Http.UnsignedRequest DisableDomainTransferLockResponse
disableDomainTransferLock domainName =
    AWS.Http.unsignedRequest
        "DisableDomainTransferLock"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disableDomainTransferLockResponseDecoder



{-| <p>This operation configures Amazon Route 53 to automatically renew the specified domain before the domain registration expires. The cost of renewing your domain registration is billed to your AWS account.</p> <p>The period during which you can renew a domain name varies by TLD. For a list of TLDs and their renewal policies, see <a href="http://wiki.gandi.net/en/domains/renew#renewal_restoration_and_deletion_times">"Renewal, restoration, and deletion times"</a> on the website for our registrar partner, Gandi. Route 53 requires that you renew before the end of the renewal period that is listed on the Gandi website so we can complete processing before the deadline.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
enableDomainAutoRenew :
    String
    -> AWS.Http.UnsignedRequest EnableDomainAutoRenewResponse
enableDomainAutoRenew domainName =
    AWS.Http.unsignedRequest
        "EnableDomainAutoRenew"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        enableDomainAutoRenewResponseDecoder



{-| <p>This operation sets the transfer lock on the domain (specifically the <code>clientTransferProhibited</code> status) to prevent domain transfers. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
enableDomainTransferLock :
    String
    -> AWS.Http.UnsignedRequest EnableDomainTransferLockResponse
enableDomainTransferLock domainName =
    AWS.Http.unsignedRequest
        "EnableDomainTransferLock"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        enableDomainTransferLockResponseDecoder



{-| <p>For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation returns information about whether the registrant contact has responded.</p> <p>If you want us to resend the email, use the <code>ResendContactReachabilityEmail</code> operation.</p>

__Required Parameters__



-}
getContactReachabilityStatus :
    (GetContactReachabilityStatusOptions -> GetContactReachabilityStatusOptions)
    -> AWS.Http.UnsignedRequest GetContactReachabilityStatusResponse
getContactReachabilityStatus setOptions =
  let
    options = setOptions (GetContactReachabilityStatusOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetContactReachabilityStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getContactReachabilityStatusResponseDecoder


{-| Options for a getContactReachabilityStatus request
-}
type alias GetContactReachabilityStatusOptions =
    { domainName : Maybe String
    }



{-| <p>This operation returns detailed information about the domain. The domain's contact information is also returned as part of the output.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
getDomainDetail :
    String
    -> AWS.Http.UnsignedRequest GetDomainDetailResponse
getDomainDetail domainName =
    AWS.Http.unsignedRequest
        "GetDomainDetail"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDomainDetailResponseDecoder



{-| <p>The GetDomainSuggestions operation returns a list of suggested domain names given a string, which can either be a domain name or simply a word or phrase (without spaces).</p> <p> Parameters: <ul><li>DomainName (string): The basis for your domain suggestion search, a string with (or without) top-level domain specified.</li> <li>SuggestionCount (int): The number of domain suggestions to be returned, maximum 50, minimum 1.</li> <li>OnlyAvailable (bool): If true, availability check will be performed on suggestion results, and only available domains will be returned. If false, suggestions will be returned without checking whether the domain is actually available, and caller will have to call checkDomainAvailability for each suggestion to determine availability for registration.</li> </ul> </p>

__Required Parameters__

* `domainName` __:__ `String`
* `suggestionCount` __:__ `Int`
* `onlyAvailable` __:__ `Bool`


-}
getDomainSuggestions :
    String
    -> Int
    -> Bool
    -> AWS.Http.UnsignedRequest GetDomainSuggestionsResponse
getDomainSuggestions domainName suggestionCount onlyAvailable =
    AWS.Http.unsignedRequest
        "GetDomainSuggestions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDomainSuggestionsResponseDecoder



{-| <p>This operation returns the current status of an operation that is not completed.</p>

__Required Parameters__

* `operationId` __:__ `String`


-}
getOperationDetail :
    String
    -> AWS.Http.UnsignedRequest GetOperationDetailResponse
getOperationDetail operationId =
    AWS.Http.unsignedRequest
        "GetOperationDetail"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getOperationDetailResponseDecoder



{-| <p>This operation returns all the domain names registered with Amazon Route 53 for the current AWS account.</p>

__Required Parameters__



-}
listDomains :
    (ListDomainsOptions -> ListDomainsOptions)
    -> AWS.Http.UnsignedRequest ListDomainsResponse
listDomains setOptions =
  let
    options = setOptions (ListDomainsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDomains"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listDomainsResponseDecoder


{-| Options for a listDomains request
-}
type alias ListDomainsOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>This operation returns the operation IDs of operations that are not yet complete.</p>

__Required Parameters__



-}
listOperations :
    (ListOperationsOptions -> ListOperationsOptions)
    -> AWS.Http.UnsignedRequest ListOperationsResponse
listOperations setOptions =
  let
    options = setOptions (ListOperationsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListOperations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listOperationsResponseDecoder


{-| Options for a listOperations request
-}
type alias ListOperationsOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>This operation returns all of the tags that are associated with the specified domain.</p> <p>All tag operations are eventually consistent; subsequent operations may not immediately represent all issued operations.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
listTagsForDomain :
    String
    -> AWS.Http.UnsignedRequest ListTagsForDomainResponse
listTagsForDomain domainName =
    AWS.Http.unsignedRequest
        "ListTagsForDomain"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTagsForDomainResponseDecoder



{-| <p>This operation registers a domain. Domains are registered by the AWS registrar partner, Gandi. For some top-level domains (TLDs), this operation requires extra parameters.</p> <p>When you register a domain, Amazon Route 53 does the following:</p> <ul> <li>Creates a Amazon Route 53 hosted zone that has the same name as the domain. Amazon Route 53 assigns four name servers to your hosted zone and automatically updates your domain registration with the names of these name servers.</li> <li>Enables autorenew, so your domain registration will renew automatically each year. We'll notify you in advance of the renewal date so you can choose whether to renew the registration.</li> <li>Optionally enables privacy protection, so WHOIS queries return contact information for our registrar partner, Gandi, instead of the information you entered for registrant, admin, and tech contacts.</li> <li>If registration is successful, returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant is notified by email.</li> <li>Charges your AWS account an amount based on the top-level domain. For more information, see <a href="http://aws.amazon.com/route53/pricing/">Amazon Route 53 Pricing</a>.</li> </ul>

__Required Parameters__

* `domainName` __:__ `String`
* `durationInYears` __:__ `Int`
* `adminContact` __:__ `ContactDetail`
* `registrantContact` __:__ `ContactDetail`
* `techContact` __:__ `ContactDetail`


-}
registerDomain :
    String
    -> Int
    -> ContactDetail
    -> ContactDetail
    -> ContactDetail
    -> (RegisterDomainOptions -> RegisterDomainOptions)
    -> AWS.Http.UnsignedRequest RegisterDomainResponse
registerDomain domainName durationInYears adminContact registrantContact techContact setOptions =
  let
    options = setOptions (RegisterDomainOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterDomain"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        registerDomainResponseDecoder


{-| Options for a registerDomain request
-}
type alias RegisterDomainOptions =
    { idnLangCode : Maybe String
    , autoRenew : Maybe Bool
    , privacyProtectAdminContact : Maybe Bool
    , privacyProtectRegistrantContact : Maybe Bool
    , privacyProtectTechContact : Maybe Bool
    }



{-| <p>This operation renews a domain for the specified number of years. The cost of renewing your domain is billed to your AWS account.</p> <p>We recommend that you renew your domain several weeks before the expiration date. Some TLD registries delete domains before the expiration date if you haven't renewed far enough in advance. For more information about renewing domain registration, see <a href="http://docs.aws.amazon.com/console/route53/domain-renew">Renewing Registration for a Domain</a> in the Amazon Route 53 documentation.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `currentExpiryYear` __:__ `Int`


-}
renewDomain :
    String
    -> Int
    -> (RenewDomainOptions -> RenewDomainOptions)
    -> AWS.Http.UnsignedRequest RenewDomainResponse
renewDomain domainName currentExpiryYear setOptions =
  let
    options = setOptions (RenewDomainOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RenewDomain"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        renewDomainResponseDecoder


{-| Options for a renewDomain request
-}
type alias RenewDomainOptions =
    { durationInYears : Maybe Int
    }



{-| <p>For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact. </p>

__Required Parameters__



-}
resendContactReachabilityEmail :
    (ResendContactReachabilityEmailOptions -> ResendContactReachabilityEmailOptions)
    -> AWS.Http.UnsignedRequest ResendContactReachabilityEmailResponse
resendContactReachabilityEmail setOptions =
  let
    options = setOptions (ResendContactReachabilityEmailOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ResendContactReachabilityEmail"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        resendContactReachabilityEmailResponseDecoder


{-| Options for a resendContactReachabilityEmail request
-}
type alias ResendContactReachabilityEmailOptions =
    { domainName : Maybe String
    }



{-| <p>This operation returns the AuthCode for the domain. To transfer a domain to another registrar, you provide this value to the new registrar.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
retrieveDomainAuthCode :
    String
    -> AWS.Http.UnsignedRequest RetrieveDomainAuthCodeResponse
retrieveDomainAuthCode domainName =
    AWS.Http.unsignedRequest
        "RetrieveDomainAuthCode"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        retrieveDomainAuthCodeResponseDecoder



{-| <p>This operation transfers a domain from another registrar to Amazon Route 53. When the transfer is complete, the domain is registered with the AWS registrar partner, Gandi.</p> <p>For transfer requirements, a detailed procedure, and information about viewing the status of a domain transfer, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html">Transferring Registration for a Domain to Amazon Route 53</a> in the Amazon Route 53 Developer Guide.</p> <p>If the registrar for your domain is also the DNS service provider for the domain, we highly recommend that you consider transferring your DNS service to Amazon Route 53 or to another DNS service provider before you transfer your registration. Some registrars provide free DNS service when you purchase a domain registration. When you transfer the registration, the previous registrar will not renew your domain registration and could end your DNS service at any time.</p> <note>Caution! If the registrar for your domain is also the DNS service provider for the domain and you don't transfer DNS service to another provider, your website, email, and the web applications associated with the domain might become unavailable.</note> <p>If the transfer is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the transfer doesn't complete successfully, the domain registrant will be notified by email.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `durationInYears` __:__ `Int`
* `adminContact` __:__ `ContactDetail`
* `registrantContact` __:__ `ContactDetail`
* `techContact` __:__ `ContactDetail`


-}
transferDomain :
    String
    -> Int
    -> ContactDetail
    -> ContactDetail
    -> ContactDetail
    -> (TransferDomainOptions -> TransferDomainOptions)
    -> AWS.Http.UnsignedRequest TransferDomainResponse
transferDomain domainName durationInYears adminContact registrantContact techContact setOptions =
  let
    options = setOptions (TransferDomainOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "TransferDomain"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        transferDomainResponseDecoder


{-| Options for a transferDomain request
-}
type alias TransferDomainOptions =
    { idnLangCode : Maybe String
    , nameservers : Maybe (List Nameserver)
    , authCode : Maybe String
    , autoRenew : Maybe Bool
    , privacyProtectAdminContact : Maybe Bool
    , privacyProtectRegistrantContact : Maybe Bool
    , privacyProtectTechContact : Maybe Bool
    }



{-| <p>This operation updates the contact information for a particular domain. Information for at least one contact (registrant, administrator, or technical) must be supplied for update.</p> <p>If the update is successful, this method returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
updateDomainContact :
    String
    -> (UpdateDomainContactOptions -> UpdateDomainContactOptions)
    -> AWS.Http.UnsignedRequest UpdateDomainContactResponse
updateDomainContact domainName setOptions =
  let
    options = setOptions (UpdateDomainContactOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateDomainContact"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateDomainContactResponseDecoder


{-| Options for a updateDomainContact request
-}
type alias UpdateDomainContactOptions =
    { adminContact : Maybe ContactDetail
    , registrantContact : Maybe ContactDetail
    , techContact : Maybe ContactDetail
    }



{-| <p>This operation updates the specified domain contact's privacy setting. When the privacy option is enabled, personal information such as postal or email address is hidden from the results of a public WHOIS query. The privacy services are provided by the AWS registrar, Gandi. For more information, see the <a href="http://www.gandi.net/domain/whois/?currency=USD&amp;amp;lang=en">Gandi privacy features</a>.</p> <p>This operation only affects the privacy of the specified contact type (registrant, administrator, or tech). Successful acceptance returns an operation ID that you can use with GetOperationDetail to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
updateDomainContactPrivacy :
    String
    -> (UpdateDomainContactPrivacyOptions -> UpdateDomainContactPrivacyOptions)
    -> AWS.Http.UnsignedRequest UpdateDomainContactPrivacyResponse
updateDomainContactPrivacy domainName setOptions =
  let
    options = setOptions (UpdateDomainContactPrivacyOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateDomainContactPrivacy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateDomainContactPrivacyResponseDecoder


{-| Options for a updateDomainContactPrivacy request
-}
type alias UpdateDomainContactPrivacyOptions =
    { adminPrivacy : Maybe Bool
    , registrantPrivacy : Maybe Bool
    , techPrivacy : Maybe Bool
    }



{-| <p>This operation replaces the current set of name servers for the domain with the specified set of name servers. If you use Amazon Route 53 as your DNS service, specify the four name servers in the delegation set for the hosted zone for the domain. </p> <p>If successful, this operation returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `nameservers` __:__ `(List Nameserver)`


-}
updateDomainNameservers :
    String
    -> (List Nameserver)
    -> (UpdateDomainNameserversOptions -> UpdateDomainNameserversOptions)
    -> AWS.Http.UnsignedRequest UpdateDomainNameserversResponse
updateDomainNameservers domainName nameservers setOptions =
  let
    options = setOptions (UpdateDomainNameserversOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateDomainNameservers"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateDomainNameserversResponseDecoder


{-| Options for a updateDomainNameservers request
-}
type alias UpdateDomainNameserversOptions =
    { fIAuthKey : Maybe String
    }



{-| <p>This operation adds or updates tags for a specified domain.</p> <p>All tag operations are eventually consistent; subsequent operations may not immediately represent all issued operations.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
updateTagsForDomain :
    String
    -> (UpdateTagsForDomainOptions -> UpdateTagsForDomainOptions)
    -> AWS.Http.UnsignedRequest UpdateTagsForDomainResponse
updateTagsForDomain domainName setOptions =
  let
    options = setOptions (UpdateTagsForDomainOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateTagsForDomain"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateTagsForDomainResponseDecoder


{-| Options for a updateTagsForDomain request
-}
type alias UpdateTagsForDomainOptions =
    { tagsToUpdate : Maybe (List Tag)
    }



{-| <p>This operation returns all the domain-related billing records for the current AWS account for a specified period</p>

__Required Parameters__



-}
viewBilling :
    (ViewBillingOptions -> ViewBillingOptions)
    -> AWS.Http.UnsignedRequest ViewBillingResponse
viewBilling setOptions =
  let
    options = setOptions (ViewBillingOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ViewBilling"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        viewBillingResponseDecoder


{-| Options for a viewBilling request
-}
type alias ViewBillingOptions =
    { start : Maybe Date
    , end : Maybe Date
    , marker : Maybe String
    , maxItems : Maybe Int
    }




{-| undefined
-}
type alias BillingRecord =
    { domainName : Maybe String
    , operation : Maybe OperationType
    , invoiceId : Maybe String
    , billDate : Maybe Date
    , price : Maybe Float
    }



billingRecordDecoder : JD.Decoder BillingRecord
billingRecordDecoder =
    JDP.decode BillingRecord
        |> JDP.optional "domainName" (JD.nullable JD.string) Nothing
        |> JDP.optional "operation" (JD.nullable operationTypeDecoder) Nothing
        |> JDP.optional "invoiceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "billDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "price" (JD.nullable JD.float) Nothing




{-| Type of HTTP response from checkDomainAvailability
-}
type alias CheckDomainAvailabilityResponse =
    { availability : DomainAvailability
    }



checkDomainAvailabilityResponseDecoder : JD.Decoder CheckDomainAvailabilityResponse
checkDomainAvailabilityResponseDecoder =
    JDP.decode CheckDomainAvailabilityResponse
        |> JDP.required "availability" domainAvailabilityDecoder




{-| <p>ContactDetail includes the following elements.</p>
-}
type alias ContactDetail =
    { firstName : Maybe String
    , lastName : Maybe String
    , contactType : Maybe ContactType
    , organizationName : Maybe String
    , addressLine1 : Maybe String
    , addressLine2 : Maybe String
    , city : Maybe String
    , state : Maybe String
    , countryCode : Maybe CountryCode
    , zipCode : Maybe String
    , phoneNumber : Maybe String
    , email : Maybe String
    , fax : Maybe String
    , extraParams : Maybe (List ExtraParam)
    }



contactDetailDecoder : JD.Decoder ContactDetail
contactDetailDecoder =
    JDP.decode ContactDetail
        |> JDP.optional "firstName" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastName" (JD.nullable JD.string) Nothing
        |> JDP.optional "contactType" (JD.nullable contactTypeDecoder) Nothing
        |> JDP.optional "organizationName" (JD.nullable JD.string) Nothing
        |> JDP.optional "addressLine1" (JD.nullable JD.string) Nothing
        |> JDP.optional "addressLine2" (JD.nullable JD.string) Nothing
        |> JDP.optional "city" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable JD.string) Nothing
        |> JDP.optional "countryCode" (JD.nullable countryCodeDecoder) Nothing
        |> JDP.optional "zipCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "phoneNumber" (JD.nullable JD.string) Nothing
        |> JDP.optional "email" (JD.nullable JD.string) Nothing
        |> JDP.optional "fax" (JD.nullable JD.string) Nothing
        |> JDP.optional "extraParams" (JD.nullable (JD.list extraParamDecoder)) Nothing




{-| One of

* `ContactType_PERSON`
* `ContactType_COMPANY`
* `ContactType_ASSOCIATION`
* `ContactType_PUBLIC_BODY`
* `ContactType_RESELLER`

-}
type ContactType
    = ContactType_PERSON
    | ContactType_COMPANY
    | ContactType_ASSOCIATION
    | ContactType_PUBLIC_BODY
    | ContactType_RESELLER



contactTypeDecoder : JD.Decoder ContactType
contactTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PERSON" ->
                        JD.succeed ContactType_PERSON

                    "COMPANY" ->
                        JD.succeed ContactType_COMPANY

                    "ASSOCIATION" ->
                        JD.succeed ContactType_ASSOCIATION

                    "PUBLIC_BODY" ->
                        JD.succeed ContactType_PUBLIC_BODY

                    "RESELLER" ->
                        JD.succeed ContactType_RESELLER


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `CountryCode_AD`
* `CountryCode_AE`
* `CountryCode_AF`
* `CountryCode_AG`
* `CountryCode_AI`
* `CountryCode_AL`
* `CountryCode_AM`
* `CountryCode_AN`
* `CountryCode_AO`
* `CountryCode_AQ`
* `CountryCode_AR`
* `CountryCode_AS`
* `CountryCode_AT`
* `CountryCode_AU`
* `CountryCode_AW`
* `CountryCode_AZ`
* `CountryCode_BA`
* `CountryCode_BB`
* `CountryCode_BD`
* `CountryCode_BE`
* `CountryCode_BF`
* `CountryCode_BG`
* `CountryCode_BH`
* `CountryCode_BI`
* `CountryCode_BJ`
* `CountryCode_BL`
* `CountryCode_BM`
* `CountryCode_BN`
* `CountryCode_BO`
* `CountryCode_BR`
* `CountryCode_BS`
* `CountryCode_BT`
* `CountryCode_BW`
* `CountryCode_BY`
* `CountryCode_BZ`
* `CountryCode_CA`
* `CountryCode_CC`
* `CountryCode_CD`
* `CountryCode_CF`
* `CountryCode_CG`
* `CountryCode_CH`
* `CountryCode_CI`
* `CountryCode_CK`
* `CountryCode_CL`
* `CountryCode_CM`
* `CountryCode_CN`
* `CountryCode_CO`
* `CountryCode_CR`
* `CountryCode_CU`
* `CountryCode_CV`
* `CountryCode_CX`
* `CountryCode_CY`
* `CountryCode_CZ`
* `CountryCode_DE`
* `CountryCode_DJ`
* `CountryCode_DK`
* `CountryCode_DM`
* `CountryCode_DO`
* `CountryCode_DZ`
* `CountryCode_EC`
* `CountryCode_EE`
* `CountryCode_EG`
* `CountryCode_ER`
* `CountryCode_ES`
* `CountryCode_ET`
* `CountryCode_FI`
* `CountryCode_FJ`
* `CountryCode_FK`
* `CountryCode_FM`
* `CountryCode_FO`
* `CountryCode_FR`
* `CountryCode_GA`
* `CountryCode_GB`
* `CountryCode_GD`
* `CountryCode_GE`
* `CountryCode_GH`
* `CountryCode_GI`
* `CountryCode_GL`
* `CountryCode_GM`
* `CountryCode_GN`
* `CountryCode_GQ`
* `CountryCode_GR`
* `CountryCode_GT`
* `CountryCode_GU`
* `CountryCode_GW`
* `CountryCode_GY`
* `CountryCode_HK`
* `CountryCode_HN`
* `CountryCode_HR`
* `CountryCode_HT`
* `CountryCode_HU`
* `CountryCode_ID`
* `CountryCode_IE`
* `CountryCode_IL`
* `CountryCode_IM`
* `CountryCode_IN`
* `CountryCode_IQ`
* `CountryCode_IR`
* `CountryCode_IS`
* `CountryCode_IT`
* `CountryCode_JM`
* `CountryCode_JO`
* `CountryCode_JP`
* `CountryCode_KE`
* `CountryCode_KG`
* `CountryCode_KH`
* `CountryCode_KI`
* `CountryCode_KM`
* `CountryCode_KN`
* `CountryCode_KP`
* `CountryCode_KR`
* `CountryCode_KW`
* `CountryCode_KY`
* `CountryCode_KZ`
* `CountryCode_LA`
* `CountryCode_LB`
* `CountryCode_LC`
* `CountryCode_LI`
* `CountryCode_LK`
* `CountryCode_LR`
* `CountryCode_LS`
* `CountryCode_LT`
* `CountryCode_LU`
* `CountryCode_LV`
* `CountryCode_LY`
* `CountryCode_MA`
* `CountryCode_MC`
* `CountryCode_MD`
* `CountryCode_ME`
* `CountryCode_MF`
* `CountryCode_MG`
* `CountryCode_MH`
* `CountryCode_MK`
* `CountryCode_ML`
* `CountryCode_MM`
* `CountryCode_MN`
* `CountryCode_MO`
* `CountryCode_MP`
* `CountryCode_MR`
* `CountryCode_MS`
* `CountryCode_MT`
* `CountryCode_MU`
* `CountryCode_MV`
* `CountryCode_MW`
* `CountryCode_MX`
* `CountryCode_MY`
* `CountryCode_MZ`
* `CountryCode_NA`
* `CountryCode_NC`
* `CountryCode_NE`
* `CountryCode_NG`
* `CountryCode_NI`
* `CountryCode_NL`
* `CountryCode_NO`
* `CountryCode_NP`
* `CountryCode_NR`
* `CountryCode_NU`
* `CountryCode_NZ`
* `CountryCode_OM`
* `CountryCode_PA`
* `CountryCode_PE`
* `CountryCode_PF`
* `CountryCode_PG`
* `CountryCode_PH`
* `CountryCode_PK`
* `CountryCode_PL`
* `CountryCode_PM`
* `CountryCode_PN`
* `CountryCode_PR`
* `CountryCode_PT`
* `CountryCode_PW`
* `CountryCode_PY`
* `CountryCode_QA`
* `CountryCode_RO`
* `CountryCode_RS`
* `CountryCode_RU`
* `CountryCode_RW`
* `CountryCode_SA`
* `CountryCode_SB`
* `CountryCode_SC`
* `CountryCode_SD`
* `CountryCode_SE`
* `CountryCode_SG`
* `CountryCode_SH`
* `CountryCode_SI`
* `CountryCode_SK`
* `CountryCode_SL`
* `CountryCode_SM`
* `CountryCode_SN`
* `CountryCode_SO`
* `CountryCode_SR`
* `CountryCode_ST`
* `CountryCode_SV`
* `CountryCode_SY`
* `CountryCode_SZ`
* `CountryCode_TC`
* `CountryCode_TD`
* `CountryCode_TG`
* `CountryCode_TH`
* `CountryCode_TJ`
* `CountryCode_TK`
* `CountryCode_TL`
* `CountryCode_TM`
* `CountryCode_TN`
* `CountryCode_TO`
* `CountryCode_TR`
* `CountryCode_TT`
* `CountryCode_TV`
* `CountryCode_TW`
* `CountryCode_TZ`
* `CountryCode_UA`
* `CountryCode_UG`
* `CountryCode_US`
* `CountryCode_UY`
* `CountryCode_UZ`
* `CountryCode_VA`
* `CountryCode_VC`
* `CountryCode_VE`
* `CountryCode_VG`
* `CountryCode_VI`
* `CountryCode_VN`
* `CountryCode_VU`
* `CountryCode_WF`
* `CountryCode_WS`
* `CountryCode_YE`
* `CountryCode_YT`
* `CountryCode_ZA`
* `CountryCode_ZM`
* `CountryCode_ZW`

-}
type CountryCode
    = CountryCode_AD
    | CountryCode_AE
    | CountryCode_AF
    | CountryCode_AG
    | CountryCode_AI
    | CountryCode_AL
    | CountryCode_AM
    | CountryCode_AN
    | CountryCode_AO
    | CountryCode_AQ
    | CountryCode_AR
    | CountryCode_AS
    | CountryCode_AT
    | CountryCode_AU
    | CountryCode_AW
    | CountryCode_AZ
    | CountryCode_BA
    | CountryCode_BB
    | CountryCode_BD
    | CountryCode_BE
    | CountryCode_BF
    | CountryCode_BG
    | CountryCode_BH
    | CountryCode_BI
    | CountryCode_BJ
    | CountryCode_BL
    | CountryCode_BM
    | CountryCode_BN
    | CountryCode_BO
    | CountryCode_BR
    | CountryCode_BS
    | CountryCode_BT
    | CountryCode_BW
    | CountryCode_BY
    | CountryCode_BZ
    | CountryCode_CA
    | CountryCode_CC
    | CountryCode_CD
    | CountryCode_CF
    | CountryCode_CG
    | CountryCode_CH
    | CountryCode_CI
    | CountryCode_CK
    | CountryCode_CL
    | CountryCode_CM
    | CountryCode_CN
    | CountryCode_CO
    | CountryCode_CR
    | CountryCode_CU
    | CountryCode_CV
    | CountryCode_CX
    | CountryCode_CY
    | CountryCode_CZ
    | CountryCode_DE
    | CountryCode_DJ
    | CountryCode_DK
    | CountryCode_DM
    | CountryCode_DO
    | CountryCode_DZ
    | CountryCode_EC
    | CountryCode_EE
    | CountryCode_EG
    | CountryCode_ER
    | CountryCode_ES
    | CountryCode_ET
    | CountryCode_FI
    | CountryCode_FJ
    | CountryCode_FK
    | CountryCode_FM
    | CountryCode_FO
    | CountryCode_FR
    | CountryCode_GA
    | CountryCode_GB
    | CountryCode_GD
    | CountryCode_GE
    | CountryCode_GH
    | CountryCode_GI
    | CountryCode_GL
    | CountryCode_GM
    | CountryCode_GN
    | CountryCode_GQ
    | CountryCode_GR
    | CountryCode_GT
    | CountryCode_GU
    | CountryCode_GW
    | CountryCode_GY
    | CountryCode_HK
    | CountryCode_HN
    | CountryCode_HR
    | CountryCode_HT
    | CountryCode_HU
    | CountryCode_ID
    | CountryCode_IE
    | CountryCode_IL
    | CountryCode_IM
    | CountryCode_IN
    | CountryCode_IQ
    | CountryCode_IR
    | CountryCode_IS
    | CountryCode_IT
    | CountryCode_JM
    | CountryCode_JO
    | CountryCode_JP
    | CountryCode_KE
    | CountryCode_KG
    | CountryCode_KH
    | CountryCode_KI
    | CountryCode_KM
    | CountryCode_KN
    | CountryCode_KP
    | CountryCode_KR
    | CountryCode_KW
    | CountryCode_KY
    | CountryCode_KZ
    | CountryCode_LA
    | CountryCode_LB
    | CountryCode_LC
    | CountryCode_LI
    | CountryCode_LK
    | CountryCode_LR
    | CountryCode_LS
    | CountryCode_LT
    | CountryCode_LU
    | CountryCode_LV
    | CountryCode_LY
    | CountryCode_MA
    | CountryCode_MC
    | CountryCode_MD
    | CountryCode_ME
    | CountryCode_MF
    | CountryCode_MG
    | CountryCode_MH
    | CountryCode_MK
    | CountryCode_ML
    | CountryCode_MM
    | CountryCode_MN
    | CountryCode_MO
    | CountryCode_MP
    | CountryCode_MR
    | CountryCode_MS
    | CountryCode_MT
    | CountryCode_MU
    | CountryCode_MV
    | CountryCode_MW
    | CountryCode_MX
    | CountryCode_MY
    | CountryCode_MZ
    | CountryCode_NA
    | CountryCode_NC
    | CountryCode_NE
    | CountryCode_NG
    | CountryCode_NI
    | CountryCode_NL
    | CountryCode_NO
    | CountryCode_NP
    | CountryCode_NR
    | CountryCode_NU
    | CountryCode_NZ
    | CountryCode_OM
    | CountryCode_PA
    | CountryCode_PE
    | CountryCode_PF
    | CountryCode_PG
    | CountryCode_PH
    | CountryCode_PK
    | CountryCode_PL
    | CountryCode_PM
    | CountryCode_PN
    | CountryCode_PR
    | CountryCode_PT
    | CountryCode_PW
    | CountryCode_PY
    | CountryCode_QA
    | CountryCode_RO
    | CountryCode_RS
    | CountryCode_RU
    | CountryCode_RW
    | CountryCode_SA
    | CountryCode_SB
    | CountryCode_SC
    | CountryCode_SD
    | CountryCode_SE
    | CountryCode_SG
    | CountryCode_SH
    | CountryCode_SI
    | CountryCode_SK
    | CountryCode_SL
    | CountryCode_SM
    | CountryCode_SN
    | CountryCode_SO
    | CountryCode_SR
    | CountryCode_ST
    | CountryCode_SV
    | CountryCode_SY
    | CountryCode_SZ
    | CountryCode_TC
    | CountryCode_TD
    | CountryCode_TG
    | CountryCode_TH
    | CountryCode_TJ
    | CountryCode_TK
    | CountryCode_TL
    | CountryCode_TM
    | CountryCode_TN
    | CountryCode_TO
    | CountryCode_TR
    | CountryCode_TT
    | CountryCode_TV
    | CountryCode_TW
    | CountryCode_TZ
    | CountryCode_UA
    | CountryCode_UG
    | CountryCode_US
    | CountryCode_UY
    | CountryCode_UZ
    | CountryCode_VA
    | CountryCode_VC
    | CountryCode_VE
    | CountryCode_VG
    | CountryCode_VI
    | CountryCode_VN
    | CountryCode_VU
    | CountryCode_WF
    | CountryCode_WS
    | CountryCode_YE
    | CountryCode_YT
    | CountryCode_ZA
    | CountryCode_ZM
    | CountryCode_ZW



countryCodeDecoder : JD.Decoder CountryCode
countryCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AD" ->
                        JD.succeed CountryCode_AD

                    "AE" ->
                        JD.succeed CountryCode_AE

                    "AF" ->
                        JD.succeed CountryCode_AF

                    "AG" ->
                        JD.succeed CountryCode_AG

                    "AI" ->
                        JD.succeed CountryCode_AI

                    "AL" ->
                        JD.succeed CountryCode_AL

                    "AM" ->
                        JD.succeed CountryCode_AM

                    "AN" ->
                        JD.succeed CountryCode_AN

                    "AO" ->
                        JD.succeed CountryCode_AO

                    "AQ" ->
                        JD.succeed CountryCode_AQ

                    "AR" ->
                        JD.succeed CountryCode_AR

                    "AS" ->
                        JD.succeed CountryCode_AS

                    "AT" ->
                        JD.succeed CountryCode_AT

                    "AU" ->
                        JD.succeed CountryCode_AU

                    "AW" ->
                        JD.succeed CountryCode_AW

                    "AZ" ->
                        JD.succeed CountryCode_AZ

                    "BA" ->
                        JD.succeed CountryCode_BA

                    "BB" ->
                        JD.succeed CountryCode_BB

                    "BD" ->
                        JD.succeed CountryCode_BD

                    "BE" ->
                        JD.succeed CountryCode_BE

                    "BF" ->
                        JD.succeed CountryCode_BF

                    "BG" ->
                        JD.succeed CountryCode_BG

                    "BH" ->
                        JD.succeed CountryCode_BH

                    "BI" ->
                        JD.succeed CountryCode_BI

                    "BJ" ->
                        JD.succeed CountryCode_BJ

                    "BL" ->
                        JD.succeed CountryCode_BL

                    "BM" ->
                        JD.succeed CountryCode_BM

                    "BN" ->
                        JD.succeed CountryCode_BN

                    "BO" ->
                        JD.succeed CountryCode_BO

                    "BR" ->
                        JD.succeed CountryCode_BR

                    "BS" ->
                        JD.succeed CountryCode_BS

                    "BT" ->
                        JD.succeed CountryCode_BT

                    "BW" ->
                        JD.succeed CountryCode_BW

                    "BY" ->
                        JD.succeed CountryCode_BY

                    "BZ" ->
                        JD.succeed CountryCode_BZ

                    "CA" ->
                        JD.succeed CountryCode_CA

                    "CC" ->
                        JD.succeed CountryCode_CC

                    "CD" ->
                        JD.succeed CountryCode_CD

                    "CF" ->
                        JD.succeed CountryCode_CF

                    "CG" ->
                        JD.succeed CountryCode_CG

                    "CH" ->
                        JD.succeed CountryCode_CH

                    "CI" ->
                        JD.succeed CountryCode_CI

                    "CK" ->
                        JD.succeed CountryCode_CK

                    "CL" ->
                        JD.succeed CountryCode_CL

                    "CM" ->
                        JD.succeed CountryCode_CM

                    "CN" ->
                        JD.succeed CountryCode_CN

                    "CO" ->
                        JD.succeed CountryCode_CO

                    "CR" ->
                        JD.succeed CountryCode_CR

                    "CU" ->
                        JD.succeed CountryCode_CU

                    "CV" ->
                        JD.succeed CountryCode_CV

                    "CX" ->
                        JD.succeed CountryCode_CX

                    "CY" ->
                        JD.succeed CountryCode_CY

                    "CZ" ->
                        JD.succeed CountryCode_CZ

                    "DE" ->
                        JD.succeed CountryCode_DE

                    "DJ" ->
                        JD.succeed CountryCode_DJ

                    "DK" ->
                        JD.succeed CountryCode_DK

                    "DM" ->
                        JD.succeed CountryCode_DM

                    "DO" ->
                        JD.succeed CountryCode_DO

                    "DZ" ->
                        JD.succeed CountryCode_DZ

                    "EC" ->
                        JD.succeed CountryCode_EC

                    "EE" ->
                        JD.succeed CountryCode_EE

                    "EG" ->
                        JD.succeed CountryCode_EG

                    "ER" ->
                        JD.succeed CountryCode_ER

                    "ES" ->
                        JD.succeed CountryCode_ES

                    "ET" ->
                        JD.succeed CountryCode_ET

                    "FI" ->
                        JD.succeed CountryCode_FI

                    "FJ" ->
                        JD.succeed CountryCode_FJ

                    "FK" ->
                        JD.succeed CountryCode_FK

                    "FM" ->
                        JD.succeed CountryCode_FM

                    "FO" ->
                        JD.succeed CountryCode_FO

                    "FR" ->
                        JD.succeed CountryCode_FR

                    "GA" ->
                        JD.succeed CountryCode_GA

                    "GB" ->
                        JD.succeed CountryCode_GB

                    "GD" ->
                        JD.succeed CountryCode_GD

                    "GE" ->
                        JD.succeed CountryCode_GE

                    "GH" ->
                        JD.succeed CountryCode_GH

                    "GI" ->
                        JD.succeed CountryCode_GI

                    "GL" ->
                        JD.succeed CountryCode_GL

                    "GM" ->
                        JD.succeed CountryCode_GM

                    "GN" ->
                        JD.succeed CountryCode_GN

                    "GQ" ->
                        JD.succeed CountryCode_GQ

                    "GR" ->
                        JD.succeed CountryCode_GR

                    "GT" ->
                        JD.succeed CountryCode_GT

                    "GU" ->
                        JD.succeed CountryCode_GU

                    "GW" ->
                        JD.succeed CountryCode_GW

                    "GY" ->
                        JD.succeed CountryCode_GY

                    "HK" ->
                        JD.succeed CountryCode_HK

                    "HN" ->
                        JD.succeed CountryCode_HN

                    "HR" ->
                        JD.succeed CountryCode_HR

                    "HT" ->
                        JD.succeed CountryCode_HT

                    "HU" ->
                        JD.succeed CountryCode_HU

                    "ID" ->
                        JD.succeed CountryCode_ID

                    "IE" ->
                        JD.succeed CountryCode_IE

                    "IL" ->
                        JD.succeed CountryCode_IL

                    "IM" ->
                        JD.succeed CountryCode_IM

                    "IN" ->
                        JD.succeed CountryCode_IN

                    "IQ" ->
                        JD.succeed CountryCode_IQ

                    "IR" ->
                        JD.succeed CountryCode_IR

                    "IS" ->
                        JD.succeed CountryCode_IS

                    "IT" ->
                        JD.succeed CountryCode_IT

                    "JM" ->
                        JD.succeed CountryCode_JM

                    "JO" ->
                        JD.succeed CountryCode_JO

                    "JP" ->
                        JD.succeed CountryCode_JP

                    "KE" ->
                        JD.succeed CountryCode_KE

                    "KG" ->
                        JD.succeed CountryCode_KG

                    "KH" ->
                        JD.succeed CountryCode_KH

                    "KI" ->
                        JD.succeed CountryCode_KI

                    "KM" ->
                        JD.succeed CountryCode_KM

                    "KN" ->
                        JD.succeed CountryCode_KN

                    "KP" ->
                        JD.succeed CountryCode_KP

                    "KR" ->
                        JD.succeed CountryCode_KR

                    "KW" ->
                        JD.succeed CountryCode_KW

                    "KY" ->
                        JD.succeed CountryCode_KY

                    "KZ" ->
                        JD.succeed CountryCode_KZ

                    "LA" ->
                        JD.succeed CountryCode_LA

                    "LB" ->
                        JD.succeed CountryCode_LB

                    "LC" ->
                        JD.succeed CountryCode_LC

                    "LI" ->
                        JD.succeed CountryCode_LI

                    "LK" ->
                        JD.succeed CountryCode_LK

                    "LR" ->
                        JD.succeed CountryCode_LR

                    "LS" ->
                        JD.succeed CountryCode_LS

                    "LT" ->
                        JD.succeed CountryCode_LT

                    "LU" ->
                        JD.succeed CountryCode_LU

                    "LV" ->
                        JD.succeed CountryCode_LV

                    "LY" ->
                        JD.succeed CountryCode_LY

                    "MA" ->
                        JD.succeed CountryCode_MA

                    "MC" ->
                        JD.succeed CountryCode_MC

                    "MD" ->
                        JD.succeed CountryCode_MD

                    "ME" ->
                        JD.succeed CountryCode_ME

                    "MF" ->
                        JD.succeed CountryCode_MF

                    "MG" ->
                        JD.succeed CountryCode_MG

                    "MH" ->
                        JD.succeed CountryCode_MH

                    "MK" ->
                        JD.succeed CountryCode_MK

                    "ML" ->
                        JD.succeed CountryCode_ML

                    "MM" ->
                        JD.succeed CountryCode_MM

                    "MN" ->
                        JD.succeed CountryCode_MN

                    "MO" ->
                        JD.succeed CountryCode_MO

                    "MP" ->
                        JD.succeed CountryCode_MP

                    "MR" ->
                        JD.succeed CountryCode_MR

                    "MS" ->
                        JD.succeed CountryCode_MS

                    "MT" ->
                        JD.succeed CountryCode_MT

                    "MU" ->
                        JD.succeed CountryCode_MU

                    "MV" ->
                        JD.succeed CountryCode_MV

                    "MW" ->
                        JD.succeed CountryCode_MW

                    "MX" ->
                        JD.succeed CountryCode_MX

                    "MY" ->
                        JD.succeed CountryCode_MY

                    "MZ" ->
                        JD.succeed CountryCode_MZ

                    "NA" ->
                        JD.succeed CountryCode_NA

                    "NC" ->
                        JD.succeed CountryCode_NC

                    "NE" ->
                        JD.succeed CountryCode_NE

                    "NG" ->
                        JD.succeed CountryCode_NG

                    "NI" ->
                        JD.succeed CountryCode_NI

                    "NL" ->
                        JD.succeed CountryCode_NL

                    "NO" ->
                        JD.succeed CountryCode_NO

                    "NP" ->
                        JD.succeed CountryCode_NP

                    "NR" ->
                        JD.succeed CountryCode_NR

                    "NU" ->
                        JD.succeed CountryCode_NU

                    "NZ" ->
                        JD.succeed CountryCode_NZ

                    "OM" ->
                        JD.succeed CountryCode_OM

                    "PA" ->
                        JD.succeed CountryCode_PA

                    "PE" ->
                        JD.succeed CountryCode_PE

                    "PF" ->
                        JD.succeed CountryCode_PF

                    "PG" ->
                        JD.succeed CountryCode_PG

                    "PH" ->
                        JD.succeed CountryCode_PH

                    "PK" ->
                        JD.succeed CountryCode_PK

                    "PL" ->
                        JD.succeed CountryCode_PL

                    "PM" ->
                        JD.succeed CountryCode_PM

                    "PN" ->
                        JD.succeed CountryCode_PN

                    "PR" ->
                        JD.succeed CountryCode_PR

                    "PT" ->
                        JD.succeed CountryCode_PT

                    "PW" ->
                        JD.succeed CountryCode_PW

                    "PY" ->
                        JD.succeed CountryCode_PY

                    "QA" ->
                        JD.succeed CountryCode_QA

                    "RO" ->
                        JD.succeed CountryCode_RO

                    "RS" ->
                        JD.succeed CountryCode_RS

                    "RU" ->
                        JD.succeed CountryCode_RU

                    "RW" ->
                        JD.succeed CountryCode_RW

                    "SA" ->
                        JD.succeed CountryCode_SA

                    "SB" ->
                        JD.succeed CountryCode_SB

                    "SC" ->
                        JD.succeed CountryCode_SC

                    "SD" ->
                        JD.succeed CountryCode_SD

                    "SE" ->
                        JD.succeed CountryCode_SE

                    "SG" ->
                        JD.succeed CountryCode_SG

                    "SH" ->
                        JD.succeed CountryCode_SH

                    "SI" ->
                        JD.succeed CountryCode_SI

                    "SK" ->
                        JD.succeed CountryCode_SK

                    "SL" ->
                        JD.succeed CountryCode_SL

                    "SM" ->
                        JD.succeed CountryCode_SM

                    "SN" ->
                        JD.succeed CountryCode_SN

                    "SO" ->
                        JD.succeed CountryCode_SO

                    "SR" ->
                        JD.succeed CountryCode_SR

                    "ST" ->
                        JD.succeed CountryCode_ST

                    "SV" ->
                        JD.succeed CountryCode_SV

                    "SY" ->
                        JD.succeed CountryCode_SY

                    "SZ" ->
                        JD.succeed CountryCode_SZ

                    "TC" ->
                        JD.succeed CountryCode_TC

                    "TD" ->
                        JD.succeed CountryCode_TD

                    "TG" ->
                        JD.succeed CountryCode_TG

                    "TH" ->
                        JD.succeed CountryCode_TH

                    "TJ" ->
                        JD.succeed CountryCode_TJ

                    "TK" ->
                        JD.succeed CountryCode_TK

                    "TL" ->
                        JD.succeed CountryCode_TL

                    "TM" ->
                        JD.succeed CountryCode_TM

                    "TN" ->
                        JD.succeed CountryCode_TN

                    "TO" ->
                        JD.succeed CountryCode_TO

                    "TR" ->
                        JD.succeed CountryCode_TR

                    "TT" ->
                        JD.succeed CountryCode_TT

                    "TV" ->
                        JD.succeed CountryCode_TV

                    "TW" ->
                        JD.succeed CountryCode_TW

                    "TZ" ->
                        JD.succeed CountryCode_TZ

                    "UA" ->
                        JD.succeed CountryCode_UA

                    "UG" ->
                        JD.succeed CountryCode_UG

                    "US" ->
                        JD.succeed CountryCode_US

                    "UY" ->
                        JD.succeed CountryCode_UY

                    "UZ" ->
                        JD.succeed CountryCode_UZ

                    "VA" ->
                        JD.succeed CountryCode_VA

                    "VC" ->
                        JD.succeed CountryCode_VC

                    "VE" ->
                        JD.succeed CountryCode_VE

                    "VG" ->
                        JD.succeed CountryCode_VG

                    "VI" ->
                        JD.succeed CountryCode_VI

                    "VN" ->
                        JD.succeed CountryCode_VN

                    "VU" ->
                        JD.succeed CountryCode_VU

                    "WF" ->
                        JD.succeed CountryCode_WF

                    "WS" ->
                        JD.succeed CountryCode_WS

                    "YE" ->
                        JD.succeed CountryCode_YE

                    "YT" ->
                        JD.succeed CountryCode_YT

                    "ZA" ->
                        JD.succeed CountryCode_ZA

                    "ZM" ->
                        JD.succeed CountryCode_ZM

                    "ZW" ->
                        JD.succeed CountryCode_ZW


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from deleteTagsForDomain
-}
type alias DeleteTagsForDomainResponse =
    { 
    }



deleteTagsForDomainResponseDecoder : JD.Decoder DeleteTagsForDomainResponse
deleteTagsForDomainResponseDecoder =
    JDP.decode DeleteTagsForDomainResponse



{-| Type of HTTP response from disableDomainAutoRenew
-}
type alias DisableDomainAutoRenewResponse =
    { 
    }



disableDomainAutoRenewResponseDecoder : JD.Decoder DisableDomainAutoRenewResponse
disableDomainAutoRenewResponseDecoder =
    JDP.decode DisableDomainAutoRenewResponse



{-| Type of HTTP response from disableDomainTransferLock
-}
type alias DisableDomainTransferLockResponse =
    { operationId : String
    }



disableDomainTransferLockResponseDecoder : JD.Decoder DisableDomainTransferLockResponse
disableDomainTransferLockResponseDecoder =
    JDP.decode DisableDomainTransferLockResponse
        |> JDP.required "operationId" JD.string




{-| One of

* `DomainAvailability_AVAILABLE`
* `DomainAvailability_AVAILABLE_RESERVED`
* `DomainAvailability_AVAILABLE_PREORDER`
* `DomainAvailability_UNAVAILABLE`
* `DomainAvailability_UNAVAILABLE_PREMIUM`
* `DomainAvailability_UNAVAILABLE_RESTRICTED`
* `DomainAvailability_RESERVED`
* `DomainAvailability_DONT_KNOW`

-}
type DomainAvailability
    = DomainAvailability_AVAILABLE
    | DomainAvailability_AVAILABLE_RESERVED
    | DomainAvailability_AVAILABLE_PREORDER
    | DomainAvailability_UNAVAILABLE
    | DomainAvailability_UNAVAILABLE_PREMIUM
    | DomainAvailability_UNAVAILABLE_RESTRICTED
    | DomainAvailability_RESERVED
    | DomainAvailability_DONT_KNOW



domainAvailabilityDecoder : JD.Decoder DomainAvailability
domainAvailabilityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AVAILABLE" ->
                        JD.succeed DomainAvailability_AVAILABLE

                    "AVAILABLE_RESERVED" ->
                        JD.succeed DomainAvailability_AVAILABLE_RESERVED

                    "AVAILABLE_PREORDER" ->
                        JD.succeed DomainAvailability_AVAILABLE_PREORDER

                    "UNAVAILABLE" ->
                        JD.succeed DomainAvailability_UNAVAILABLE

                    "UNAVAILABLE_PREMIUM" ->
                        JD.succeed DomainAvailability_UNAVAILABLE_PREMIUM

                    "UNAVAILABLE_RESTRICTED" ->
                        JD.succeed DomainAvailability_UNAVAILABLE_RESTRICTED

                    "RESERVED" ->
                        JD.succeed DomainAvailability_RESERVED

                    "DONT_KNOW" ->
                        JD.succeed DomainAvailability_DONT_KNOW


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The number of domains has exceeded the allowed threshold for the account.</p>
-}
type alias DomainLimitExceeded =
    { message : Maybe String
    }



domainLimitExceededDecoder : JD.Decoder DomainLimitExceeded
domainLimitExceededDecoder =
    JDP.decode DomainLimitExceeded
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias DomainSuggestion =
    { domainName : Maybe String
    , availability : Maybe String
    }



domainSuggestionDecoder : JD.Decoder DomainSuggestion
domainSuggestionDecoder =
    JDP.decode DomainSuggestion
        |> JDP.optional "domainName" (JD.nullable JD.string) Nothing
        |> JDP.optional "availability" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias DomainSummary =
    { domainName : String
    , autoRenew : Maybe Bool
    , transferLock : Maybe Bool
    , expiry : Maybe Date
    }



domainSummaryDecoder : JD.Decoder DomainSummary
domainSummaryDecoder =
    JDP.decode DomainSummary
        |> JDP.required "domainName" JD.string
        |> JDP.optional "autoRenew" (JD.nullable JD.bool) Nothing
        |> JDP.optional "transferLock" (JD.nullable JD.bool) Nothing
        |> JDP.optional "expiry" (JD.nullable JDX.date) Nothing




{-| <p>The request is already in progress for the domain.</p>
-}
type alias DuplicateRequest =
    { message : Maybe String
    }



duplicateRequestDecoder : JD.Decoder DuplicateRequest
duplicateRequestDecoder =
    JDP.decode DuplicateRequest
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from enableDomainAutoRenew
-}
type alias EnableDomainAutoRenewResponse =
    { 
    }



enableDomainAutoRenewResponseDecoder : JD.Decoder EnableDomainAutoRenewResponse
enableDomainAutoRenewResponseDecoder =
    JDP.decode EnableDomainAutoRenewResponse



{-| Type of HTTP response from enableDomainTransferLock
-}
type alias EnableDomainTransferLockResponse =
    { operationId : String
    }



enableDomainTransferLockResponseDecoder : JD.Decoder EnableDomainTransferLockResponse
enableDomainTransferLockResponseDecoder =
    JDP.decode EnableDomainTransferLockResponse
        |> JDP.required "operationId" JD.string




{-| <p>ExtraParam includes the following elements.</p>
-}
type alias ExtraParam =
    { name : ExtraParamName
    , value : String
    }



extraParamDecoder : JD.Decoder ExtraParam
extraParamDecoder =
    JDP.decode ExtraParam
        |> JDP.required "name" extraParamNameDecoder
        |> JDP.required "value" JD.string




{-| One of

* `ExtraParamName_DUNS_NUMBER`
* `ExtraParamName_BRAND_NUMBER`
* `ExtraParamName_BIRTH_DEPARTMENT`
* `ExtraParamName_BIRTH_DATE_IN_YYYY_MM_DD`
* `ExtraParamName_BIRTH_COUNTRY`
* `ExtraParamName_BIRTH_CITY`
* `ExtraParamName_DOCUMENT_NUMBER`
* `ExtraParamName_AU_ID_NUMBER`
* `ExtraParamName_AU_ID_TYPE`
* `ExtraParamName_CA_LEGAL_TYPE`
* `ExtraParamName_CA_BUSINESS_ENTITY_TYPE`
* `ExtraParamName_ES_IDENTIFICATION`
* `ExtraParamName_ES_IDENTIFICATION_TYPE`
* `ExtraParamName_ES_LEGAL_FORM`
* `ExtraParamName_FI_BUSINESS_NUMBER`
* `ExtraParamName_FI_ID_NUMBER`
* `ExtraParamName_IT_PIN`
* `ExtraParamName_RU_PASSPORT_DATA`
* `ExtraParamName_SE_ID_NUMBER`
* `ExtraParamName_SG_ID_NUMBER`
* `ExtraParamName_VAT_NUMBER`

-}
type ExtraParamName
    = ExtraParamName_DUNS_NUMBER
    | ExtraParamName_BRAND_NUMBER
    | ExtraParamName_BIRTH_DEPARTMENT
    | ExtraParamName_BIRTH_DATE_IN_YYYY_MM_DD
    | ExtraParamName_BIRTH_COUNTRY
    | ExtraParamName_BIRTH_CITY
    | ExtraParamName_DOCUMENT_NUMBER
    | ExtraParamName_AU_ID_NUMBER
    | ExtraParamName_AU_ID_TYPE
    | ExtraParamName_CA_LEGAL_TYPE
    | ExtraParamName_CA_BUSINESS_ENTITY_TYPE
    | ExtraParamName_ES_IDENTIFICATION
    | ExtraParamName_ES_IDENTIFICATION_TYPE
    | ExtraParamName_ES_LEGAL_FORM
    | ExtraParamName_FI_BUSINESS_NUMBER
    | ExtraParamName_FI_ID_NUMBER
    | ExtraParamName_IT_PIN
    | ExtraParamName_RU_PASSPORT_DATA
    | ExtraParamName_SE_ID_NUMBER
    | ExtraParamName_SG_ID_NUMBER
    | ExtraParamName_VAT_NUMBER



extraParamNameDecoder : JD.Decoder ExtraParamName
extraParamNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DUNS_NUMBER" ->
                        JD.succeed ExtraParamName_DUNS_NUMBER

                    "BRAND_NUMBER" ->
                        JD.succeed ExtraParamName_BRAND_NUMBER

                    "BIRTH_DEPARTMENT" ->
                        JD.succeed ExtraParamName_BIRTH_DEPARTMENT

                    "BIRTH_DATE_IN_YYYY_MM_DD" ->
                        JD.succeed ExtraParamName_BIRTH_DATE_IN_YYYY_MM_DD

                    "BIRTH_COUNTRY" ->
                        JD.succeed ExtraParamName_BIRTH_COUNTRY

                    "BIRTH_CITY" ->
                        JD.succeed ExtraParamName_BIRTH_CITY

                    "DOCUMENT_NUMBER" ->
                        JD.succeed ExtraParamName_DOCUMENT_NUMBER

                    "AU_ID_NUMBER" ->
                        JD.succeed ExtraParamName_AU_ID_NUMBER

                    "AU_ID_TYPE" ->
                        JD.succeed ExtraParamName_AU_ID_TYPE

                    "CA_LEGAL_TYPE" ->
                        JD.succeed ExtraParamName_CA_LEGAL_TYPE

                    "CA_BUSINESS_ENTITY_TYPE" ->
                        JD.succeed ExtraParamName_CA_BUSINESS_ENTITY_TYPE

                    "ES_IDENTIFICATION" ->
                        JD.succeed ExtraParamName_ES_IDENTIFICATION

                    "ES_IDENTIFICATION_TYPE" ->
                        JD.succeed ExtraParamName_ES_IDENTIFICATION_TYPE

                    "ES_LEGAL_FORM" ->
                        JD.succeed ExtraParamName_ES_LEGAL_FORM

                    "FI_BUSINESS_NUMBER" ->
                        JD.succeed ExtraParamName_FI_BUSINESS_NUMBER

                    "FI_ID_NUMBER" ->
                        JD.succeed ExtraParamName_FI_ID_NUMBER

                    "IT_PIN" ->
                        JD.succeed ExtraParamName_IT_PIN

                    "RU_PASSPORT_DATA" ->
                        JD.succeed ExtraParamName_RU_PASSPORT_DATA

                    "SE_ID_NUMBER" ->
                        JD.succeed ExtraParamName_SE_ID_NUMBER

                    "SG_ID_NUMBER" ->
                        JD.succeed ExtraParamName_SG_ID_NUMBER

                    "VAT_NUMBER" ->
                        JD.succeed ExtraParamName_VAT_NUMBER


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from getContactReachabilityStatus
-}
type alias GetContactReachabilityStatusResponse =
    { domainName : Maybe String
    , status : Maybe ReachabilityStatus
    }



getContactReachabilityStatusResponseDecoder : JD.Decoder GetContactReachabilityStatusResponse
getContactReachabilityStatusResponseDecoder =
    JDP.decode GetContactReachabilityStatusResponse
        |> JDP.optional "domainName" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable reachabilityStatusDecoder) Nothing




{-| Type of HTTP response from getDomainDetail
-}
type alias GetDomainDetailResponse =
    { domainName : String
    , nameservers : (List Nameserver)
    , autoRenew : Maybe Bool
    , adminContact : ContactDetail
    , registrantContact : ContactDetail
    , techContact : ContactDetail
    , adminPrivacy : Maybe Bool
    , registrantPrivacy : Maybe Bool
    , techPrivacy : Maybe Bool
    , registrarName : Maybe String
    , whoIsServer : Maybe String
    , registrarUrl : Maybe String
    , abuseContactEmail : Maybe String
    , abuseContactPhone : Maybe String
    , registryDomainId : Maybe String
    , creationDate : Maybe Date
    , updatedDate : Maybe Date
    , expirationDate : Maybe Date
    , reseller : Maybe String
    , dnsSec : Maybe String
    , statusList : Maybe (List String)
    }



getDomainDetailResponseDecoder : JD.Decoder GetDomainDetailResponse
getDomainDetailResponseDecoder =
    JDP.decode GetDomainDetailResponse
        |> JDP.required "domainName" JD.string
        |> JDP.required "nameservers" (JD.list nameserverDecoder)
        |> JDP.optional "autoRenew" (JD.nullable JD.bool) Nothing
        |> JDP.required "adminContact" contactDetailDecoder
        |> JDP.required "registrantContact" contactDetailDecoder
        |> JDP.required "techContact" contactDetailDecoder
        |> JDP.optional "adminPrivacy" (JD.nullable JD.bool) Nothing
        |> JDP.optional "registrantPrivacy" (JD.nullable JD.bool) Nothing
        |> JDP.optional "techPrivacy" (JD.nullable JD.bool) Nothing
        |> JDP.optional "registrarName" (JD.nullable JD.string) Nothing
        |> JDP.optional "whoIsServer" (JD.nullable JD.string) Nothing
        |> JDP.optional "registrarUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "abuseContactEmail" (JD.nullable JD.string) Nothing
        |> JDP.optional "abuseContactPhone" (JD.nullable JD.string) Nothing
        |> JDP.optional "registryDomainId" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "updatedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "expirationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "reseller" (JD.nullable JD.string) Nothing
        |> JDP.optional "dnsSec" (JD.nullable JD.string) Nothing
        |> JDP.optional "statusList" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from getDomainSuggestions
-}
type alias GetDomainSuggestionsResponse =
    { suggestionsList : Maybe (List DomainSuggestion)
    }



getDomainSuggestionsResponseDecoder : JD.Decoder GetDomainSuggestionsResponse
getDomainSuggestionsResponseDecoder =
    JDP.decode GetDomainSuggestionsResponse
        |> JDP.optional "suggestionsList" (JD.nullable (JD.list domainSuggestionDecoder)) Nothing




{-| Type of HTTP response from getOperationDetail
-}
type alias GetOperationDetailResponse =
    { operationId : Maybe String
    , status : Maybe OperationStatus
    , message : Maybe String
    , domainName : Maybe String
    , type_ : Maybe OperationType
    , submittedDate : Maybe Date
    }



getOperationDetailResponseDecoder : JD.Decoder GetOperationDetailResponse
getOperationDetailResponseDecoder =
    JDP.decode GetOperationDetailResponse
        |> JDP.optional "operationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable operationStatusDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "domainName" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable operationTypeDecoder) Nothing
        |> JDP.optional "submittedDate" (JD.nullable JDX.date) Nothing




{-| <p>The requested item is not acceptable. For example, for an OperationId it may refer to the ID of an operation that is already completed. For a domain name, it may not be a valid domain name or belong to the requester account.</p>
-}
type alias InvalidInput =
    { message : Maybe String
    }



invalidInputDecoder : JD.Decoder InvalidInput
invalidInputDecoder =
    JDP.decode InvalidInput
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listDomains
-}
type alias ListDomainsResponse =
    { domains : (List DomainSummary)
    , nextPageMarker : Maybe String
    }



listDomainsResponseDecoder : JD.Decoder ListDomainsResponse
listDomainsResponseDecoder =
    JDP.decode ListDomainsResponse
        |> JDP.required "domains" (JD.list domainSummaryDecoder)
        |> JDP.optional "nextPageMarker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listOperations
-}
type alias ListOperationsResponse =
    { operations : (List OperationSummary)
    , nextPageMarker : Maybe String
    }



listOperationsResponseDecoder : JD.Decoder ListOperationsResponse
listOperationsResponseDecoder =
    JDP.decode ListOperationsResponse
        |> JDP.required "operations" (JD.list operationSummaryDecoder)
        |> JDP.optional "nextPageMarker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listTagsForDomain
-}
type alias ListTagsForDomainResponse =
    { tagList : (List Tag)
    }



listTagsForDomainResponseDecoder : JD.Decoder ListTagsForDomainResponse
listTagsForDomainResponseDecoder =
    JDP.decode ListTagsForDomainResponse
        |> JDP.required "tagList" (JD.list tagDecoder)




{-| <p>Nameserver includes the following elements.</p>
-}
type alias Nameserver =
    { name : String
    , glueIps : Maybe (List String)
    }



nameserverDecoder : JD.Decoder Nameserver
nameserverDecoder =
    JDP.decode Nameserver
        |> JDP.required "name" JD.string
        |> JDP.optional "glueIps" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>The number of operations or jobs running exceeded the allowed threshold for the account.</p>
-}
type alias OperationLimitExceeded =
    { message : Maybe String
    }



operationLimitExceededDecoder : JD.Decoder OperationLimitExceeded
operationLimitExceededDecoder =
    JDP.decode OperationLimitExceeded
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `OperationStatus_SUBMITTED`
* `OperationStatus_IN_PROGRESS`
* `OperationStatus_ERROR`
* `OperationStatus_SUCCESSFUL`
* `OperationStatus_FAILED`

-}
type OperationStatus
    = OperationStatus_SUBMITTED
    | OperationStatus_IN_PROGRESS
    | OperationStatus_ERROR
    | OperationStatus_SUCCESSFUL
    | OperationStatus_FAILED



operationStatusDecoder : JD.Decoder OperationStatus
operationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUBMITTED" ->
                        JD.succeed OperationStatus_SUBMITTED

                    "IN_PROGRESS" ->
                        JD.succeed OperationStatus_IN_PROGRESS

                    "ERROR" ->
                        JD.succeed OperationStatus_ERROR

                    "SUCCESSFUL" ->
                        JD.succeed OperationStatus_SUCCESSFUL

                    "FAILED" ->
                        JD.succeed OperationStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>OperationSummary includes the following elements.</p>
-}
type alias OperationSummary =
    { operationId : String
    , status : OperationStatus
    , type_ : OperationType
    , submittedDate : Date
    }



operationSummaryDecoder : JD.Decoder OperationSummary
operationSummaryDecoder =
    JDP.decode OperationSummary
        |> JDP.required "operationId" JD.string
        |> JDP.required "status" operationStatusDecoder
        |> JDP.required "type_" operationTypeDecoder
        |> JDP.required "submittedDate" JDX.date




{-| One of

* `OperationType_REGISTER_DOMAIN`
* `OperationType_DELETE_DOMAIN`
* `OperationType_TRANSFER_IN_DOMAIN`
* `OperationType_UPDATE_DOMAIN_CONTACT`
* `OperationType_UPDATE_NAMESERVER`
* `OperationType_CHANGE_PRIVACY_PROTECTION`
* `OperationType_DOMAIN_LOCK`

-}
type OperationType
    = OperationType_REGISTER_DOMAIN
    | OperationType_DELETE_DOMAIN
    | OperationType_TRANSFER_IN_DOMAIN
    | OperationType_UPDATE_DOMAIN_CONTACT
    | OperationType_UPDATE_NAMESERVER
    | OperationType_CHANGE_PRIVACY_PROTECTION
    | OperationType_DOMAIN_LOCK



operationTypeDecoder : JD.Decoder OperationType
operationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "REGISTER_DOMAIN" ->
                        JD.succeed OperationType_REGISTER_DOMAIN

                    "DELETE_DOMAIN" ->
                        JD.succeed OperationType_DELETE_DOMAIN

                    "TRANSFER_IN_DOMAIN" ->
                        JD.succeed OperationType_TRANSFER_IN_DOMAIN

                    "UPDATE_DOMAIN_CONTACT" ->
                        JD.succeed OperationType_UPDATE_DOMAIN_CONTACT

                    "UPDATE_NAMESERVER" ->
                        JD.succeed OperationType_UPDATE_NAMESERVER

                    "CHANGE_PRIVACY_PROTECTION" ->
                        JD.succeed OperationType_CHANGE_PRIVACY_PROTECTION

                    "DOMAIN_LOCK" ->
                        JD.succeed OperationType_DOMAIN_LOCK


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ReachabilityStatus_PENDING`
* `ReachabilityStatus_DONE`
* `ReachabilityStatus_EXPIRED`

-}
type ReachabilityStatus
    = ReachabilityStatus_PENDING
    | ReachabilityStatus_DONE
    | ReachabilityStatus_EXPIRED



reachabilityStatusDecoder : JD.Decoder ReachabilityStatus
reachabilityStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed ReachabilityStatus_PENDING

                    "DONE" ->
                        JD.succeed ReachabilityStatus_DONE

                    "EXPIRED" ->
                        JD.succeed ReachabilityStatus_EXPIRED


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from registerDomain
-}
type alias RegisterDomainResponse =
    { operationId : String
    }



registerDomainResponseDecoder : JD.Decoder RegisterDomainResponse
registerDomainResponseDecoder =
    JDP.decode RegisterDomainResponse
        |> JDP.required "operationId" JD.string




{-| Type of HTTP response from renewDomain
-}
type alias RenewDomainResponse =
    { operationId : String
    }



renewDomainResponseDecoder : JD.Decoder RenewDomainResponse
renewDomainResponseDecoder =
    JDP.decode RenewDomainResponse
        |> JDP.required "operationId" JD.string




{-| Type of HTTP response from resendContactReachabilityEmail
-}
type alias ResendContactReachabilityEmailResponse =
    { domainName : Maybe String
    , emailAddress : Maybe String
    , isAlreadyVerified : Maybe Bool
    }



resendContactReachabilityEmailResponseDecoder : JD.Decoder ResendContactReachabilityEmailResponse
resendContactReachabilityEmailResponseDecoder =
    JDP.decode ResendContactReachabilityEmailResponse
        |> JDP.optional "domainName" (JD.nullable JD.string) Nothing
        |> JDP.optional "emailAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "isAlreadyVerified" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from retrieveDomainAuthCode
-}
type alias RetrieveDomainAuthCodeResponse =
    { authCode : String
    }



retrieveDomainAuthCodeResponseDecoder : JD.Decoder RetrieveDomainAuthCodeResponse
retrieveDomainAuthCodeResponseDecoder =
    JDP.decode RetrieveDomainAuthCodeResponse
        |> JDP.required "authCode" JD.string




{-| <p>The top-level domain does not support this operation.</p>
-}
type alias TLDRulesViolation =
    { message : Maybe String
    }



tLDRulesViolationDecoder : JD.Decoder TLDRulesViolation
tLDRulesViolationDecoder =
    JDP.decode TLDRulesViolation
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Each tag includes the following elements.</p>
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




{-| Type of HTTP response from transferDomain
-}
type alias TransferDomainResponse =
    { operationId : String
    }



transferDomainResponseDecoder : JD.Decoder TransferDomainResponse
transferDomainResponseDecoder =
    JDP.decode TransferDomainResponse
        |> JDP.required "operationId" JD.string




{-| <p>Amazon Route 53 does not support this top-level domain.</p>
-}
type alias UnsupportedTLD =
    { message : Maybe String
    }



unsupportedTLDDecoder : JD.Decoder UnsupportedTLD
unsupportedTLDDecoder =
    JDP.decode UnsupportedTLD
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateDomainContactPrivacy
-}
type alias UpdateDomainContactPrivacyResponse =
    { operationId : String
    }



updateDomainContactPrivacyResponseDecoder : JD.Decoder UpdateDomainContactPrivacyResponse
updateDomainContactPrivacyResponseDecoder =
    JDP.decode UpdateDomainContactPrivacyResponse
        |> JDP.required "operationId" JD.string




{-| Type of HTTP response from updateDomainContact
-}
type alias UpdateDomainContactResponse =
    { operationId : String
    }



updateDomainContactResponseDecoder : JD.Decoder UpdateDomainContactResponse
updateDomainContactResponseDecoder =
    JDP.decode UpdateDomainContactResponse
        |> JDP.required "operationId" JD.string




{-| Type of HTTP response from updateDomainNameservers
-}
type alias UpdateDomainNameserversResponse =
    { operationId : String
    }



updateDomainNameserversResponseDecoder : JD.Decoder UpdateDomainNameserversResponse
updateDomainNameserversResponseDecoder =
    JDP.decode UpdateDomainNameserversResponse
        |> JDP.required "operationId" JD.string




{-| Type of HTTP response from updateTagsForDomain
-}
type alias UpdateTagsForDomainResponse =
    { 
    }



updateTagsForDomainResponseDecoder : JD.Decoder UpdateTagsForDomainResponse
updateTagsForDomainResponseDecoder =
    JDP.decode UpdateTagsForDomainResponse



{-| Type of HTTP response from viewBilling
-}
type alias ViewBillingResponse =
    { nextPageMarker : Maybe String
    , billingRecords : Maybe (List BillingRecord)
    }



viewBillingResponseDecoder : JD.Decoder ViewBillingResponse
viewBillingResponseDecoder =
    JDP.decode ViewBillingResponse
        |> JDP.optional "nextPageMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "billingRecords" (JD.nullable (JD.list billingRecordDecoder)) Nothing




