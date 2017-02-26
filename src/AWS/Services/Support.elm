module AWS.Services.Support
    exposing
        ( config
        , addAttachmentsToSet
        , AddAttachmentsToSetOptions
        , addCommunicationToCase
        , AddCommunicationToCaseOptions
        , createCase
        , CreateCaseOptions
        , describeAttachment
        , describeCases
        , DescribeCasesOptions
        , describeCommunications
        , DescribeCommunicationsOptions
        , describeServices
        , DescribeServicesOptions
        , describeSeverityLevels
        , DescribeSeverityLevelsOptions
        , describeTrustedAdvisorCheckRefreshStatuses
        , describeTrustedAdvisorCheckResult
        , DescribeTrustedAdvisorCheckResultOptions
        , describeTrustedAdvisorCheckSummaries
        , describeTrustedAdvisorChecks
        , refreshTrustedAdvisorCheck
        , resolveCase
        , ResolveCaseOptions
        , AddAttachmentsToSetResponse
        , AddCommunicationToCaseResponse
        , Attachment
        , AttachmentDetails
        , AttachmentIdNotFound
        , AttachmentLimitExceeded
        , AttachmentSetExpired
        , AttachmentSetIdNotFound
        , AttachmentSetSizeLimitExceeded
        , CaseCreationLimitExceeded
        , CaseDetails
        , CaseIdNotFound
        , Category
        , Communication
        , CreateCaseResponse
        , DescribeAttachmentLimitExceeded
        , DescribeAttachmentResponse
        , DescribeCasesResponse
        , DescribeCommunicationsResponse
        , DescribeServicesResponse
        , DescribeSeverityLevelsResponse
        , DescribeTrustedAdvisorCheckRefreshStatusesResponse
        , DescribeTrustedAdvisorCheckResultResponse
        , DescribeTrustedAdvisorCheckSummariesResponse
        , DescribeTrustedAdvisorChecksResponse
        , InternalServerError
        , RecentCaseCommunications
        , RefreshTrustedAdvisorCheckResponse
        , ResolveCaseResponse
        , Service
        , SeverityLevel
        , TrustedAdvisorCategorySpecificSummary
        , TrustedAdvisorCheckDescription
        , TrustedAdvisorCheckRefreshStatus
        , TrustedAdvisorCheckResult
        , TrustedAdvisorCheckSummary
        , TrustedAdvisorCostOptimizingSummary
        , TrustedAdvisorResourceDetail
        , TrustedAdvisorResourcesSummary
        )

{-| <fullname>AWS Support</fullname> <p>The AWS Support API reference is intended for programmers who need detailed information about the AWS Support operations and data types. This service enables you to manage your AWS Support cases programmatically. It uses HTTP methods that return results in JSON format.</p> <p>The AWS Support service also exposes a set of <a href="http://aws.amazon.com/premiumsupport/trustedadvisor/">Trusted Advisor</a> features. You can retrieve a list of checks and their descriptions, get check results, specify checks to refresh, and get the refresh status of checks. </p> <p>The following list describes the AWS Support case management operations:</p> <ul> <li> <p> <b>Service names, issue categories, and available severity levels. </b>The <a>DescribeServices</a> and <a>DescribeSeverityLevels</a> operations return AWS service names, service codes, service categories, and problem severity levels. You use these values when you call the <a>CreateCase</a> operation. </p> </li> <li> <p> <b>Case creation, case details, and case resolution.</b> The <a>CreateCase</a>, <a>DescribeCases</a>, <a>DescribeAttachment</a>, and <a>ResolveCase</a> operations create AWS Support cases, retrieve information about cases, and resolve cases.</p> </li> <li> <p> <b>Case communication.</b> The <a>DescribeCommunications</a>, <a>AddCommunicationToCase</a>, and <a>AddAttachmentsToSet</a> operations retrieve and add communications and attachments to AWS Support cases. </p> </li> </ul> <p>The following list describes the operations available from the AWS Support service for Trusted Advisor:</p> <ul> <li> <p> <a>DescribeTrustedAdvisorChecks</a> returns the list of checks that run against your AWS resources.</p> </li> <li> <p>Using the <code>checkId</code> for a specific check returned by <a>DescribeTrustedAdvisorChecks</a>, you can call <a>DescribeTrustedAdvisorCheckResult</a> to obtain the results for the check you specified.</p> </li> <li> <p> <a>DescribeTrustedAdvisorCheckSummaries</a> returns summarized results for one or more Trusted Advisor checks.</p> </li> <li> <p> <a>RefreshTrustedAdvisorCheck</a> requests that Trusted Advisor rerun a specified check. </p> </li> <li> <p> <a>DescribeTrustedAdvisorCheckRefreshStatuses</a> reports the refresh status of one or more checks. </p> </li> </ul> <p>For authentication of requests, AWS Support uses <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing Process</a>.</p> <p>See <a href="http://docs.aws.amazon.com/awssupport/latest/user/Welcome.html">About the AWS Support API</a> in the <i>AWS Support User Guide</i> for information about how to use this service to create and manage your support cases, and how to call Trusted Advisor for results of checks on your resources. </p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Exceptions](#exceptions)

## Operations

* [addAttachmentsToSet](#addAttachmentsToSet)
* [AddAttachmentsToSetOptions](#AddAttachmentsToSetOptions)
* [addCommunicationToCase](#addCommunicationToCase)
* [AddCommunicationToCaseOptions](#AddCommunicationToCaseOptions)
* [createCase](#createCase)
* [CreateCaseOptions](#CreateCaseOptions)
* [describeAttachment](#describeAttachment)
* [describeCases](#describeCases)
* [DescribeCasesOptions](#DescribeCasesOptions)
* [describeCommunications](#describeCommunications)
* [DescribeCommunicationsOptions](#DescribeCommunicationsOptions)
* [describeServices](#describeServices)
* [DescribeServicesOptions](#DescribeServicesOptions)
* [describeSeverityLevels](#describeSeverityLevels)
* [DescribeSeverityLevelsOptions](#DescribeSeverityLevelsOptions)
* [describeTrustedAdvisorCheckRefreshStatuses](#describeTrustedAdvisorCheckRefreshStatuses)
* [describeTrustedAdvisorCheckResult](#describeTrustedAdvisorCheckResult)
* [DescribeTrustedAdvisorCheckResultOptions](#DescribeTrustedAdvisorCheckResultOptions)
* [describeTrustedAdvisorCheckSummaries](#describeTrustedAdvisorCheckSummaries)
* [describeTrustedAdvisorChecks](#describeTrustedAdvisorChecks)
* [refreshTrustedAdvisorCheck](#refreshTrustedAdvisorCheck)
* [resolveCase](#resolveCase)
* [ResolveCaseOptions](#ResolveCaseOptions)


@docs addAttachmentsToSet,AddAttachmentsToSetOptions,addCommunicationToCase,AddCommunicationToCaseOptions,createCase,CreateCaseOptions,describeAttachment,describeCases,DescribeCasesOptions,describeCommunications,DescribeCommunicationsOptions,describeServices,DescribeServicesOptions,describeSeverityLevels,DescribeSeverityLevelsOptions,describeTrustedAdvisorCheckRefreshStatuses,describeTrustedAdvisorCheckResult,DescribeTrustedAdvisorCheckResultOptions,describeTrustedAdvisorCheckSummaries,describeTrustedAdvisorChecks,refreshTrustedAdvisorCheck,resolveCase,ResolveCaseOptions

## Responses

* [AddAttachmentsToSetResponse](#AddAttachmentsToSetResponse)
* [AddCommunicationToCaseResponse](#AddCommunicationToCaseResponse)
* [CreateCaseResponse](#CreateCaseResponse)
* [DescribeAttachmentResponse](#DescribeAttachmentResponse)
* [DescribeCasesResponse](#DescribeCasesResponse)
* [DescribeCommunicationsResponse](#DescribeCommunicationsResponse)
* [DescribeServicesResponse](#DescribeServicesResponse)
* [DescribeSeverityLevelsResponse](#DescribeSeverityLevelsResponse)
* [DescribeTrustedAdvisorCheckRefreshStatusesResponse](#DescribeTrustedAdvisorCheckRefreshStatusesResponse)
* [DescribeTrustedAdvisorCheckResultResponse](#DescribeTrustedAdvisorCheckResultResponse)
* [DescribeTrustedAdvisorCheckSummariesResponse](#DescribeTrustedAdvisorCheckSummariesResponse)
* [DescribeTrustedAdvisorChecksResponse](#DescribeTrustedAdvisorChecksResponse)
* [RefreshTrustedAdvisorCheckResponse](#RefreshTrustedAdvisorCheckResponse)
* [ResolveCaseResponse](#ResolveCaseResponse)


@docs AddAttachmentsToSetResponse,AddCommunicationToCaseResponse,CreateCaseResponse,DescribeAttachmentResponse,DescribeCasesResponse,DescribeCommunicationsResponse,DescribeServicesResponse,DescribeSeverityLevelsResponse,DescribeTrustedAdvisorCheckRefreshStatusesResponse,DescribeTrustedAdvisorCheckResultResponse,DescribeTrustedAdvisorCheckSummariesResponse,DescribeTrustedAdvisorChecksResponse,RefreshTrustedAdvisorCheckResponse,ResolveCaseResponse

## Records

* [Attachment](#Attachment)
* [AttachmentDetails](#AttachmentDetails)
* [CaseDetails](#CaseDetails)
* [Category](#Category)
* [Communication](#Communication)
* [RecentCaseCommunications](#RecentCaseCommunications)
* [Service](#Service)
* [SeverityLevel](#SeverityLevel)
* [TrustedAdvisorCategorySpecificSummary](#TrustedAdvisorCategorySpecificSummary)
* [TrustedAdvisorCheckDescription](#TrustedAdvisorCheckDescription)
* [TrustedAdvisorCheckRefreshStatus](#TrustedAdvisorCheckRefreshStatus)
* [TrustedAdvisorCheckResult](#TrustedAdvisorCheckResult)
* [TrustedAdvisorCheckSummary](#TrustedAdvisorCheckSummary)
* [TrustedAdvisorCostOptimizingSummary](#TrustedAdvisorCostOptimizingSummary)
* [TrustedAdvisorResourceDetail](#TrustedAdvisorResourceDetail)
* [TrustedAdvisorResourcesSummary](#TrustedAdvisorResourcesSummary)


@docs Attachment,AttachmentDetails,CaseDetails,Category,Communication,RecentCaseCommunications,Service,SeverityLevel,TrustedAdvisorCategorySpecificSummary,TrustedAdvisorCheckDescription,TrustedAdvisorCheckRefreshStatus,TrustedAdvisorCheckResult,TrustedAdvisorCheckSummary,TrustedAdvisorCostOptimizingSummary,TrustedAdvisorResourceDetail,TrustedAdvisorResourcesSummary

## Exceptions

* [AttachmentIdNotFound](#AttachmentIdNotFound)
* [AttachmentLimitExceeded](#AttachmentLimitExceeded)
* [AttachmentSetExpired](#AttachmentSetExpired)
* [AttachmentSetIdNotFound](#AttachmentSetIdNotFound)
* [AttachmentSetSizeLimitExceeded](#AttachmentSetSizeLimitExceeded)
* [CaseCreationLimitExceeded](#CaseCreationLimitExceeded)
* [CaseIdNotFound](#CaseIdNotFound)
* [DescribeAttachmentLimitExceeded](#DescribeAttachmentLimitExceeded)
* [InternalServerError](#InternalServerError)


@docs AttachmentIdNotFound,AttachmentLimitExceeded,AttachmentSetExpired,AttachmentSetIdNotFound,AttachmentSetSizeLimitExceeded,CaseCreationLimitExceeded,CaseIdNotFound,DescribeAttachmentLimitExceeded,InternalServerError

-}

import AWS
import AWS.Config
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE


{-| Configuration for this service
-}
config : AWS.ServiceConfig
config =
    AWS.Config.Service
        "support"
        "2013-04-15"
        "1.1"
        "AWSSUPPORT_20130415."
        "support.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Adds one or more attachments to an attachment set. If an <code>attachmentSetId</code> is not specified, a new attachment set is created, and the ID of the set is returned in the response. If an <code>attachmentSetId</code> is specified, the attachments are added to the specified set, if it exists.</p> <p>An attachment set is a temporary container for attachments that are to be added to a case or case communication. The set is available for one hour after it is created; the <code>expiryTime</code> returned in the response indicates when the set expires. The maximum number of attachments in a set is 3, and the maximum size of any attachment in the set is 5 MB.</p>

__Required Parameters__

* `attachments` __:__ `(List Attachment)`


-}
addAttachmentsToSet :
    (List Attachment)
    -> (AddAttachmentsToSetOptions -> AddAttachmentsToSetOptions)
    -> AWS.Request AddAttachmentsToSetResponse
addAttachmentsToSet attachments setOptions =
  let
    options = setOptions (AddAttachmentsToSetOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AddAttachmentsToSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addAttachmentsToSetResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a addAttachmentsToSet request
-}
type alias AddAttachmentsToSetOptions =
    { attachmentSetId : Maybe String
    }



{-| <p>Adds additional customer communication to an AWS Support case. You use the <code>caseId</code> value to identify the case to add communication to. You can list a set of email addresses to copy on the communication using the <code>ccEmailAddresses</code> value. The <code>communicationBody</code> value contains the text of the communication.</p> <p>The response indicates the success or failure of the request.</p> <p>This operation implements a subset of the features of the AWS Support Center.</p>

__Required Parameters__

* `communicationBody` __:__ `String`


-}
addCommunicationToCase :
    String
    -> (AddCommunicationToCaseOptions -> AddCommunicationToCaseOptions)
    -> AWS.Request AddCommunicationToCaseResponse
addCommunicationToCase communicationBody setOptions =
  let
    options = setOptions (AddCommunicationToCaseOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AddCommunicationToCase"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addCommunicationToCaseResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a addCommunicationToCase request
-}
type alias AddCommunicationToCaseOptions =
    { caseId : Maybe String
    , ccEmailAddresses : Maybe (List String)
    , attachmentSetId : Maybe String
    }



{-| <p>Creates a new case in the AWS Support Center. This operation is modeled on the behavior of the AWS Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page. Its parameters require you to specify the following information: </p> <ul> <li> <p> <b>issueType.</b> The type of issue for the case. You can specify either "customer-service" or "technical." If you do not indicate a value, the default is "technical." </p> </li> <li> <p> <b>serviceCode.</b> The code for an AWS service. You obtain the <code>serviceCode</code> by calling <a>DescribeServices</a>. </p> </li> <li> <p> <b>categoryCode.</b> The category for the service defined for the <code>serviceCode</code> value. You also obtain the category code for a service by calling <a>DescribeServices</a>. Each AWS service defines its own set of category codes. </p> </li> <li> <p> <b>severityCode.</b> A value that indicates the urgency of the case, which in turn determines the response time according to your service level agreement with AWS Support. You obtain the SeverityCode by calling <a>DescribeSeverityLevels</a>.</p> </li> <li> <p> <b>subject.</b> The <b>Subject</b> field on the AWS Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page.</p> </li> <li> <p> <b>communicationBody.</b> The <b>Description</b> field on the AWS Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page.</p> </li> <li> <p> <b>attachmentSetId.</b> The ID of a set of attachments that has been created by using <a>AddAttachmentsToSet</a>.</p> </li> <li> <p> <b>language.</b> The human language in which AWS Support handles the case. English and Japanese are currently supported.</p> </li> <li> <p> <b>ccEmailAddresses.</b> The AWS Support Center <b>CC</b> field on the <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page. You can list email addresses to be copied on any correspondence about the case. The account that opens the case is already identified by passing the AWS Credentials in the HTTP POST method or in a method or function call from one of the programming languages supported by an <a href="http://aws.amazon.com/tools/">AWS SDK</a>. </p> </li> </ul> <note> <p>To add additional communication or attachments to an existing case, use <a>AddCommunicationToCase</a>.</p> </note> <p>A successful <a>CreateCase</a> request returns an AWS Support case number. Case numbers are used by the <a>DescribeCases</a> operation to retrieve existing AWS Support cases. </p>

__Required Parameters__

* `subject` __:__ `String`
* `communicationBody` __:__ `String`


-}
createCase :
    String
    -> String
    -> (CreateCaseOptions -> CreateCaseOptions)
    -> AWS.Request CreateCaseResponse
createCase subject communicationBody setOptions =
  let
    options = setOptions (CreateCaseOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateCase"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createCaseResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createCase request
-}
type alias CreateCaseOptions =
    { serviceCode : Maybe String
    , severityCode : Maybe String
    , categoryCode : Maybe String
    , ccEmailAddresses : Maybe (List String)
    , language : Maybe String
    , issueType : Maybe String
    , attachmentSetId : Maybe String
    }



{-| <p>Returns the attachment that has the specified ID. Attachment IDs are generated by the case management system when you add an attachment to a case or case communication. Attachment IDs are returned in the <a>AttachmentDetails</a> objects that are returned by the <a>DescribeCommunications</a> operation.</p>

__Required Parameters__

* `attachmentId` __:__ `String`


-}
describeAttachment :
    String
    -> AWS.Request DescribeAttachmentResponse
describeAttachment attachmentId =
    AWS.Http.unsignedRequest
        "DescribeAttachment"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAttachmentResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns a list of cases that you specify by passing one or more case IDs. In addition, you can filter the cases by date by setting values for the <code>afterTime</code> and <code>beforeTime</code> request parameters. You can set values for the <code>includeResolvedCases</code> and <code>includeCommunications</code> request parameters to control how much information is returned. </p> <p>Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error.</p> <p>The response returns the following in JSON format:</p> <ul> <li> <p>One or more <a>CaseDetails</a> data types. </p> </li> <li> <p>One or more <code>nextToken</code> values, which specify where to paginate the returned records represented by the <code>CaseDetails</code> objects.</p> </li> </ul>

__Required Parameters__



-}
describeCases :
    (DescribeCasesOptions -> DescribeCasesOptions)
    -> AWS.Request DescribeCasesResponse
describeCases setOptions =
  let
    options = setOptions (DescribeCasesOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeCases"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeCasesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeCases request
-}
type alias DescribeCasesOptions =
    { caseIdList : Maybe (List String)
    , displayId : Maybe String
    , afterTime : Maybe String
    , beforeTime : Maybe String
    , includeResolvedCases : Maybe Bool
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , language : Maybe String
    , includeCommunications : Maybe Bool
    }



{-| <p>Returns communications (and attachments) for one or more support cases. You can use the <code>afterTime</code> and <code>beforeTime</code> parameters to filter by date. You can use the <code>caseId</code> parameter to restrict the results to a particular case.</p> <p>Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error.</p> <p>You can use the <code>maxResults</code> and <code>nextToken</code> parameters to control the pagination of the result set. Set <code>maxResults</code> to the number of cases you want displayed on each page, and use <code>nextToken</code> to specify the resumption of pagination.</p>

__Required Parameters__

* `caseId` __:__ `String`


-}
describeCommunications :
    String
    -> (DescribeCommunicationsOptions -> DescribeCommunicationsOptions)
    -> AWS.Request DescribeCommunicationsResponse
describeCommunications caseId setOptions =
  let
    options = setOptions (DescribeCommunicationsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeCommunications"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeCommunicationsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeCommunications request
-}
type alias DescribeCommunicationsOptions =
    { beforeTime : Maybe String
    , afterTime : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Returns the current list of AWS services and a list of service categories that applies to each one. You then use service names and categories in your <a>CreateCase</a> requests. Each AWS service has its own set of categories.</p> <p>The service codes and category codes correspond to the values that are displayed in the <b>Service</b> and <b>Category</b> drop-down lists on the AWS Support Center <a href="https://console.aws.amazon.com/support/home#/case/create">Create Case</a> page. The values in those fields, however, do not necessarily match the service codes and categories returned by the <code>DescribeServices</code> request. Always use the service codes and categories obtained programmatically. This practice ensures that you always have the most recent set of service and category codes.</p>

__Required Parameters__



-}
describeServices :
    (DescribeServicesOptions -> DescribeServicesOptions)
    -> AWS.Request DescribeServicesResponse
describeServices setOptions =
  let
    options = setOptions (DescribeServicesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeServices"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeServicesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeServices request
-}
type alias DescribeServicesOptions =
    { serviceCodeList : Maybe (List String)
    , language : Maybe String
    }



{-| <p>Returns the list of severity levels that you can assign to an AWS Support case. The severity level for a case is also a field in the <a>CaseDetails</a> data type included in any <a>CreateCase</a> request. </p>

__Required Parameters__



-}
describeSeverityLevels :
    (DescribeSeverityLevelsOptions -> DescribeSeverityLevelsOptions)
    -> AWS.Request DescribeSeverityLevelsResponse
describeSeverityLevels setOptions =
  let
    options = setOptions (DescribeSeverityLevelsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSeverityLevels"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSeverityLevelsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSeverityLevels request
-}
type alias DescribeSeverityLevelsOptions =
    { language : Maybe String
    }



{-| <p>Returns the refresh status of the Trusted Advisor checks that have the specified check IDs. Check IDs can be obtained by calling <a>DescribeTrustedAdvisorChecks</a>.</p> <note> <p>Some checks are refreshed automatically, and their refresh statuses cannot be retrieved by using this operation. Use of the <code>DescribeTrustedAdvisorCheckRefreshStatuses</code> operation for these checks causes an <code>InvalidParameterValue</code> error.</p> </note>

__Required Parameters__

* `checkIds` __:__ `(List String)`


-}
describeTrustedAdvisorCheckRefreshStatuses :
    (List String)
    -> AWS.Request DescribeTrustedAdvisorCheckRefreshStatusesResponse
describeTrustedAdvisorCheckRefreshStatuses checkIds =
    AWS.Http.unsignedRequest
        "DescribeTrustedAdvisorCheckRefreshStatuses"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTrustedAdvisorCheckRefreshStatusesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the results of the Trusted Advisor check that has the specified check ID. Check IDs can be obtained by calling <a>DescribeTrustedAdvisorChecks</a>.</p> <p>The response contains a <a>TrustedAdvisorCheckResult</a> object, which contains these three objects:</p> <ul> <li> <p> <a>TrustedAdvisorCategorySpecificSummary</a> </p> </li> <li> <p> <a>TrustedAdvisorResourceDetail</a> </p> </li> <li> <p> <a>TrustedAdvisorResourcesSummary</a> </p> </li> </ul> <p>In addition, the response contains these fields:</p> <ul> <li> <p> <b>status.</b> The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".</p> </li> <li> <p> <b>timestamp.</b> The time of the last refresh of the check.</p> </li> <li> <p> <b>checkId.</b> The unique identifier for the check.</p> </li> </ul>

__Required Parameters__

* `checkId` __:__ `String`


-}
describeTrustedAdvisorCheckResult :
    String
    -> (DescribeTrustedAdvisorCheckResultOptions -> DescribeTrustedAdvisorCheckResultOptions)
    -> AWS.Request DescribeTrustedAdvisorCheckResultResponse
describeTrustedAdvisorCheckResult checkId setOptions =
  let
    options = setOptions (DescribeTrustedAdvisorCheckResultOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeTrustedAdvisorCheckResult"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTrustedAdvisorCheckResultResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeTrustedAdvisorCheckResult request
-}
type alias DescribeTrustedAdvisorCheckResultOptions =
    { language : Maybe String
    }



{-| <p>Returns the summaries of the results of the Trusted Advisor checks that have the specified check IDs. Check IDs can be obtained by calling <a>DescribeTrustedAdvisorChecks</a>.</p> <p>The response contains an array of <a>TrustedAdvisorCheckSummary</a> objects.</p>

__Required Parameters__

* `checkIds` __:__ `(List String)`


-}
describeTrustedAdvisorCheckSummaries :
    (List String)
    -> AWS.Request DescribeTrustedAdvisorCheckSummariesResponse
describeTrustedAdvisorCheckSummaries checkIds =
    AWS.Http.unsignedRequest
        "DescribeTrustedAdvisorCheckSummaries"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTrustedAdvisorCheckSummariesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns information about all available Trusted Advisor checks, including name, ID, category, description, and metadata. You must specify a language code; English ("en") and Japanese ("ja") are currently supported. The response contains a <a>TrustedAdvisorCheckDescription</a> for each check.</p>

__Required Parameters__

* `language` __:__ `String`


-}
describeTrustedAdvisorChecks :
    String
    -> AWS.Request DescribeTrustedAdvisorChecksResponse
describeTrustedAdvisorChecks language =
    AWS.Http.unsignedRequest
        "DescribeTrustedAdvisorChecks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTrustedAdvisorChecksResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Requests a refresh of the Trusted Advisor check that has the specified check ID. Check IDs can be obtained by calling <a>DescribeTrustedAdvisorChecks</a>.</p> <note> <p>Some checks are refreshed automatically, and they cannot be refreshed by using this operation. Use of the <code>RefreshTrustedAdvisorCheck</code> operation for these checks causes an <code>InvalidParameterValue</code> error.</p> </note> <p>The response contains a <a>TrustedAdvisorCheckRefreshStatus</a> object, which contains these fields:</p> <ul> <li> <p> <b>status.</b> The refresh status of the check: "none", "enqueued", "processing", "success", or "abandoned".</p> </li> <li> <p> <b>millisUntilNextRefreshable.</b> The amount of time, in milliseconds, until the check is eligible for refresh.</p> </li> <li> <p> <b>checkId.</b> The unique identifier for the check.</p> </li> </ul>

__Required Parameters__

* `checkId` __:__ `String`


-}
refreshTrustedAdvisorCheck :
    String
    -> AWS.Request RefreshTrustedAdvisorCheckResponse
refreshTrustedAdvisorCheck checkId =
    AWS.Http.unsignedRequest
        "RefreshTrustedAdvisorCheck"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        refreshTrustedAdvisorCheckResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Takes a <code>caseId</code> and returns the initial state of the case along with the state of the case after the call to <a>ResolveCase</a> completed.</p>

__Required Parameters__



-}
resolveCase :
    (ResolveCaseOptions -> ResolveCaseOptions)
    -> AWS.Request ResolveCaseResponse
resolveCase setOptions =
  let
    options = setOptions (ResolveCaseOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ResolveCase"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        resolveCaseResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a resolveCase request
-}
type alias ResolveCaseOptions =
    { caseId : Maybe String
    }




{-| Type of HTTP response from addAttachmentsToSet
-}
type alias AddAttachmentsToSetResponse =
    { attachmentSetId : Maybe String
    , expiryTime : Maybe String
    }



addAttachmentsToSetResponseDecoder : JD.Decoder AddAttachmentsToSetResponse
addAttachmentsToSetResponseDecoder =
    JDP.decode AddAttachmentsToSetResponse
        |> JDP.optional "attachmentSetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "expiryTime" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from addCommunicationToCase
-}
type alias AddCommunicationToCaseResponse =
    { result : Maybe Bool
    }



addCommunicationToCaseResponseDecoder : JD.Decoder AddCommunicationToCaseResponse
addCommunicationToCaseResponseDecoder =
    JDP.decode AddCommunicationToCaseResponse
        |> JDP.optional "result" (JD.nullable JD.bool) Nothing




{-| <p>An attachment to a case communication. The attachment consists of the file name and the content of the file.</p>
-}
type alias Attachment =
    { fileName : Maybe String
    , data : Maybe String
    }



attachmentDecoder : JD.Decoder Attachment
attachmentDecoder =
    JDP.decode Attachment
        |> JDP.optional "fileName" (JD.nullable JD.string) Nothing
        |> JDP.optional "data" (JD.nullable JD.string) Nothing




{-| <p>The file name and ID of an attachment to a case communication. You can use the ID to retrieve the attachment with the <a>DescribeAttachment</a> operation.</p>
-}
type alias AttachmentDetails =
    { attachmentId : Maybe String
    , fileName : Maybe String
    }



attachmentDetailsDecoder : JD.Decoder AttachmentDetails
attachmentDetailsDecoder =
    JDP.decode AttachmentDetails
        |> JDP.optional "attachmentId" (JD.nullable JD.string) Nothing
        |> JDP.optional "fileName" (JD.nullable JD.string) Nothing




{-| <p>An attachment with the specified ID could not be found.</p>
-}
type alias AttachmentIdNotFound =
    { message : Maybe String
    }



attachmentIdNotFoundDecoder : JD.Decoder AttachmentIdNotFound
attachmentIdNotFoundDecoder =
    JDP.decode AttachmentIdNotFound
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The limit for the number of attachment sets created in a short period of time has been exceeded.</p>
-}
type alias AttachmentLimitExceeded =
    { message : Maybe String
    }



attachmentLimitExceededDecoder : JD.Decoder AttachmentLimitExceeded
attachmentLimitExceededDecoder =
    JDP.decode AttachmentLimitExceeded
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The expiration time of the attachment set has passed. The set expires 1 hour after it is created.</p>
-}
type alias AttachmentSetExpired =
    { message : Maybe String
    }



attachmentSetExpiredDecoder : JD.Decoder AttachmentSetExpired
attachmentSetExpiredDecoder =
    JDP.decode AttachmentSetExpired
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>An attachment set with the specified ID could not be found.</p>
-}
type alias AttachmentSetIdNotFound =
    { message : Maybe String
    }



attachmentSetIdNotFoundDecoder : JD.Decoder AttachmentSetIdNotFound
attachmentSetIdNotFoundDecoder =
    JDP.decode AttachmentSetIdNotFound
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A limit for the size of an attachment set has been exceeded. The limits are 3 attachments and 5 MB per attachment.</p>
-}
type alias AttachmentSetSizeLimitExceeded =
    { message : Maybe String
    }



attachmentSetSizeLimitExceededDecoder : JD.Decoder AttachmentSetSizeLimitExceeded
attachmentSetSizeLimitExceededDecoder =
    JDP.decode AttachmentSetSizeLimitExceeded
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The case creation limit for the account has been exceeded.</p>
-}
type alias CaseCreationLimitExceeded =
    { message : Maybe String
    }



caseCreationLimitExceededDecoder : JD.Decoder CaseCreationLimitExceeded
caseCreationLimitExceededDecoder =
    JDP.decode CaseCreationLimitExceeded
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A JSON-formatted object that contains the metadata for a support case. It is contained the response from a <a>DescribeCases</a> request. <b>CaseDetails</b> contains the following fields:</p> <ul> <li> <p> <b>caseId.</b> The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>.</p> </li> <li> <p> <b>categoryCode.</b> The category of problem for the AWS Support case. Corresponds to the CategoryCode values returned by a call to <a>DescribeServices</a>.</p> </li> <li> <p> <b>displayId.</b> The identifier for the case on pages in the AWS Support Center.</p> </li> <li> <p> <b>language.</b> The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.</p> </li> <li> <p> <b>recentCommunications.</b> One or more <a>Communication</a> objects. Fields of these objects are <code>attachments</code>, <code>body</code>, <code>caseId</code>, <code>submittedBy</code>, and <code>timeCreated</code>.</p> </li> <li> <p> <b>nextToken.</b> A resumption point for pagination.</p> </li> <li> <p> <b>serviceCode.</b> The identifier for the AWS service that corresponds to the service code defined in the call to <a>DescribeServices</a>.</p> </li> <li> <p> <b>severityCode. </b>The severity code assigned to the case. Contains one of the values returned by the call to <a>DescribeSeverityLevels</a>.</p> </li> <li> <p> <b>status.</b> The status of the case in the AWS Support Center.</p> </li> <li> <p> <b>subject.</b> The subject line of the case.</p> </li> <li> <p> <b>submittedBy.</b> The email address of the account that submitted the case.</p> </li> <li> <p> <b>timeCreated.</b> The time the case was created, in ISO-8601 format.</p> </li> </ul>
-}
type alias CaseDetails =
    { caseId : Maybe String
    , displayId : Maybe String
    , subject : Maybe String
    , status : Maybe String
    , serviceCode : Maybe String
    , categoryCode : Maybe String
    , severityCode : Maybe String
    , submittedBy : Maybe String
    , timeCreated : Maybe String
    , recentCommunications : Maybe RecentCaseCommunications
    , ccEmailAddresses : Maybe (List String)
    , language : Maybe String
    }



caseDetailsDecoder : JD.Decoder CaseDetails
caseDetailsDecoder =
    JDP.decode CaseDetails
        |> JDP.optional "caseId" (JD.nullable JD.string) Nothing
        |> JDP.optional "displayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "subject" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "serviceCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "categoryCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "severityCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "submittedBy" (JD.nullable JD.string) Nothing
        |> JDP.optional "timeCreated" (JD.nullable JD.string) Nothing
        |> JDP.optional "recentCommunications" (JD.nullable recentCaseCommunicationsDecoder) Nothing
        |> JDP.optional "ccEmailAddresses" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "language" (JD.nullable JD.string) Nothing




{-| <p>The requested <code>caseId</code> could not be located.</p>
-}
type alias CaseIdNotFound =
    { message : Maybe String
    }



caseIdNotFoundDecoder : JD.Decoder CaseIdNotFound
caseIdNotFoundDecoder =
    JDP.decode CaseIdNotFound
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A JSON-formatted name/value pair that represents the category name and category code of the problem, selected from the <a>DescribeServices</a> response for each AWS service.</p>
-}
type alias Category =
    { code : Maybe String
    , name : Maybe String
    }



categoryDecoder : JD.Decoder Category
categoryDecoder =
    JDP.decode Category
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>A communication associated with an AWS Support case. The communication consists of the case ID, the message body, attachment information, the account email address, and the date and time of the communication.</p>
-}
type alias Communication =
    { caseId : Maybe String
    , body : Maybe String
    , submittedBy : Maybe String
    , timeCreated : Maybe String
    , attachmentSet : Maybe (List AttachmentDetails)
    }



communicationDecoder : JD.Decoder Communication
communicationDecoder =
    JDP.decode Communication
        |> JDP.optional "caseId" (JD.nullable JD.string) Nothing
        |> JDP.optional "body" (JD.nullable JD.string) Nothing
        |> JDP.optional "submittedBy" (JD.nullable JD.string) Nothing
        |> JDP.optional "timeCreated" (JD.nullable JD.string) Nothing
        |> JDP.optional "attachmentSet" (JD.nullable (JD.list attachmentDetailsDecoder)) Nothing




{-| Type of HTTP response from createCase
-}
type alias CreateCaseResponse =
    { caseId : Maybe String
    }



createCaseResponseDecoder : JD.Decoder CreateCaseResponse
createCaseResponseDecoder =
    JDP.decode CreateCaseResponse
        |> JDP.optional "caseId" (JD.nullable JD.string) Nothing




{-| <p>The limit for the number of <a>DescribeAttachment</a> requests in a short period of time has been exceeded.</p>
-}
type alias DescribeAttachmentLimitExceeded =
    { message : Maybe String
    }



describeAttachmentLimitExceededDecoder : JD.Decoder DescribeAttachmentLimitExceeded
describeAttachmentLimitExceededDecoder =
    JDP.decode DescribeAttachmentLimitExceeded
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeAttachment
-}
type alias DescribeAttachmentResponse =
    { attachment : Maybe Attachment
    }



describeAttachmentResponseDecoder : JD.Decoder DescribeAttachmentResponse
describeAttachmentResponseDecoder =
    JDP.decode DescribeAttachmentResponse
        |> JDP.optional "attachment" (JD.nullable attachmentDecoder) Nothing




{-| Type of HTTP response from describeCases
-}
type alias DescribeCasesResponse =
    { cases : Maybe (List CaseDetails)
    , nextToken : Maybe String
    }



describeCasesResponseDecoder : JD.Decoder DescribeCasesResponse
describeCasesResponseDecoder =
    JDP.decode DescribeCasesResponse
        |> JDP.optional "cases" (JD.nullable (JD.list caseDetailsDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeCommunications
-}
type alias DescribeCommunicationsResponse =
    { communications : Maybe (List Communication)
    , nextToken : Maybe String
    }



describeCommunicationsResponseDecoder : JD.Decoder DescribeCommunicationsResponse
describeCommunicationsResponseDecoder =
    JDP.decode DescribeCommunicationsResponse
        |> JDP.optional "communications" (JD.nullable (JD.list communicationDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeServices
-}
type alias DescribeServicesResponse =
    { services : Maybe (List Service)
    }



describeServicesResponseDecoder : JD.Decoder DescribeServicesResponse
describeServicesResponseDecoder =
    JDP.decode DescribeServicesResponse
        |> JDP.optional "services" (JD.nullable (JD.list serviceDecoder)) Nothing




{-| Type of HTTP response from describeSeverityLevels
-}
type alias DescribeSeverityLevelsResponse =
    { severityLevels : Maybe (List SeverityLevel)
    }



describeSeverityLevelsResponseDecoder : JD.Decoder DescribeSeverityLevelsResponse
describeSeverityLevelsResponseDecoder =
    JDP.decode DescribeSeverityLevelsResponse
        |> JDP.optional "severityLevels" (JD.nullable (JD.list severityLevelDecoder)) Nothing




{-| Type of HTTP response from describeTrustedAdvisorCheckRefreshStatuses
-}
type alias DescribeTrustedAdvisorCheckRefreshStatusesResponse =
    { statuses : (List TrustedAdvisorCheckRefreshStatus)
    }



describeTrustedAdvisorCheckRefreshStatusesResponseDecoder : JD.Decoder DescribeTrustedAdvisorCheckRefreshStatusesResponse
describeTrustedAdvisorCheckRefreshStatusesResponseDecoder =
    JDP.decode DescribeTrustedAdvisorCheckRefreshStatusesResponse
        |> JDP.required "statuses" (JD.list trustedAdvisorCheckRefreshStatusDecoder)




{-| Type of HTTP response from describeTrustedAdvisorCheckResult
-}
type alias DescribeTrustedAdvisorCheckResultResponse =
    { result : Maybe TrustedAdvisorCheckResult
    }



describeTrustedAdvisorCheckResultResponseDecoder : JD.Decoder DescribeTrustedAdvisorCheckResultResponse
describeTrustedAdvisorCheckResultResponseDecoder =
    JDP.decode DescribeTrustedAdvisorCheckResultResponse
        |> JDP.optional "result" (JD.nullable trustedAdvisorCheckResultDecoder) Nothing




{-| Type of HTTP response from describeTrustedAdvisorCheckSummaries
-}
type alias DescribeTrustedAdvisorCheckSummariesResponse =
    { summaries : (List TrustedAdvisorCheckSummary)
    }



describeTrustedAdvisorCheckSummariesResponseDecoder : JD.Decoder DescribeTrustedAdvisorCheckSummariesResponse
describeTrustedAdvisorCheckSummariesResponseDecoder =
    JDP.decode DescribeTrustedAdvisorCheckSummariesResponse
        |> JDP.required "summaries" (JD.list trustedAdvisorCheckSummaryDecoder)




{-| Type of HTTP response from describeTrustedAdvisorChecks
-}
type alias DescribeTrustedAdvisorChecksResponse =
    { checks : (List TrustedAdvisorCheckDescription)
    }



describeTrustedAdvisorChecksResponseDecoder : JD.Decoder DescribeTrustedAdvisorChecksResponse
describeTrustedAdvisorChecksResponseDecoder =
    JDP.decode DescribeTrustedAdvisorChecksResponse
        |> JDP.required "checks" (JD.list trustedAdvisorCheckDescriptionDecoder)




{-| <p>An internal server error occurred.</p>
-}
type alias InternalServerError =
    { message : Maybe String
    }



internalServerErrorDecoder : JD.Decoder InternalServerError
internalServerErrorDecoder =
    JDP.decode InternalServerError
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The five most recent communications associated with the case.</p>
-}
type alias RecentCaseCommunications =
    { communications : Maybe (List Communication)
    , nextToken : Maybe String
    }



recentCaseCommunicationsDecoder : JD.Decoder RecentCaseCommunications
recentCaseCommunicationsDecoder =
    JDP.decode RecentCaseCommunications
        |> JDP.optional "communications" (JD.nullable (JD.list communicationDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from refreshTrustedAdvisorCheck
-}
type alias RefreshTrustedAdvisorCheckResponse =
    { status : TrustedAdvisorCheckRefreshStatus
    }



refreshTrustedAdvisorCheckResponseDecoder : JD.Decoder RefreshTrustedAdvisorCheckResponse
refreshTrustedAdvisorCheckResponseDecoder =
    JDP.decode RefreshTrustedAdvisorCheckResponse
        |> JDP.required "status" trustedAdvisorCheckRefreshStatusDecoder




{-| Type of HTTP response from resolveCase
-}
type alias ResolveCaseResponse =
    { initialCaseStatus : Maybe String
    , finalCaseStatus : Maybe String
    }



resolveCaseResponseDecoder : JD.Decoder ResolveCaseResponse
resolveCaseResponseDecoder =
    JDP.decode ResolveCaseResponse
        |> JDP.optional "initialCaseStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "finalCaseStatus" (JD.nullable JD.string) Nothing




{-| <p>Information about an AWS service returned by the <a>DescribeServices</a> operation. </p>
-}
type alias Service =
    { code : Maybe String
    , name : Maybe String
    , categories : Maybe (List Category)
    }



serviceDecoder : JD.Decoder Service
serviceDecoder =
    JDP.decode Service
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "categories" (JD.nullable (JD.list categoryDecoder)) Nothing




{-| <p>A code and name pair that represent a severity level that can be applied to a support case.</p>
-}
type alias SeverityLevel =
    { code : Maybe String
    , name : Maybe String
    }



severityLevelDecoder : JD.Decoder SeverityLevel
severityLevelDecoder =
    JDP.decode SeverityLevel
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>The container for summary information that relates to the category of the Trusted Advisor check.</p>
-}
type alias TrustedAdvisorCategorySpecificSummary =
    { costOptimizing : Maybe TrustedAdvisorCostOptimizingSummary
    }



trustedAdvisorCategorySpecificSummaryDecoder : JD.Decoder TrustedAdvisorCategorySpecificSummary
trustedAdvisorCategorySpecificSummaryDecoder =
    JDP.decode TrustedAdvisorCategorySpecificSummary
        |> JDP.optional "costOptimizing" (JD.nullable trustedAdvisorCostOptimizingSummaryDecoder) Nothing




{-| <p>The description and metadata for a Trusted Advisor check.</p>
-}
type alias TrustedAdvisorCheckDescription =
    { id : String
    , name : String
    , description : String
    , category : String
    , metadata : (List String)
    }



trustedAdvisorCheckDescriptionDecoder : JD.Decoder TrustedAdvisorCheckDescription
trustedAdvisorCheckDescriptionDecoder =
    JDP.decode TrustedAdvisorCheckDescription
        |> JDP.required "id" JD.string
        |> JDP.required "name" JD.string
        |> JDP.required "description" JD.string
        |> JDP.required "category" JD.string
        |> JDP.required "metadata" (JD.list JD.string)




{-| <p>The refresh status of a Trusted Advisor check.</p>
-}
type alias TrustedAdvisorCheckRefreshStatus =
    { checkId : String
    , status : String
    , millisUntilNextRefreshable : Int
    }



trustedAdvisorCheckRefreshStatusDecoder : JD.Decoder TrustedAdvisorCheckRefreshStatus
trustedAdvisorCheckRefreshStatusDecoder =
    JDP.decode TrustedAdvisorCheckRefreshStatus
        |> JDP.required "checkId" JD.string
        |> JDP.required "status" JD.string
        |> JDP.required "millisUntilNextRefreshable" JD.int




{-| <p>The results of a Trusted Advisor check returned by <a>DescribeTrustedAdvisorCheckResult</a>.</p>
-}
type alias TrustedAdvisorCheckResult =
    { checkId : String
    , timestamp : String
    , status : String
    , resourcesSummary : TrustedAdvisorResourcesSummary
    , categorySpecificSummary : TrustedAdvisorCategorySpecificSummary
    , flaggedResources : (List TrustedAdvisorResourceDetail)
    }



trustedAdvisorCheckResultDecoder : JD.Decoder TrustedAdvisorCheckResult
trustedAdvisorCheckResultDecoder =
    JDP.decode TrustedAdvisorCheckResult
        |> JDP.required "checkId" JD.string
        |> JDP.required "timestamp" JD.string
        |> JDP.required "status" JD.string
        |> JDP.required "resourcesSummary" trustedAdvisorResourcesSummaryDecoder
        |> JDP.required "categorySpecificSummary" trustedAdvisorCategorySpecificSummaryDecoder
        |> JDP.required "flaggedResources" (JD.list trustedAdvisorResourceDetailDecoder)




{-| <p>A summary of a Trusted Advisor check result, including the alert status, last refresh, and number of resources examined.</p>
-}
type alias TrustedAdvisorCheckSummary =
    { checkId : String
    , timestamp : String
    , status : String
    , hasFlaggedResources : Maybe Bool
    , resourcesSummary : TrustedAdvisorResourcesSummary
    , categorySpecificSummary : TrustedAdvisorCategorySpecificSummary
    }



trustedAdvisorCheckSummaryDecoder : JD.Decoder TrustedAdvisorCheckSummary
trustedAdvisorCheckSummaryDecoder =
    JDP.decode TrustedAdvisorCheckSummary
        |> JDP.required "checkId" JD.string
        |> JDP.required "timestamp" JD.string
        |> JDP.required "status" JD.string
        |> JDP.optional "hasFlaggedResources" (JD.nullable JD.bool) Nothing
        |> JDP.required "resourcesSummary" trustedAdvisorResourcesSummaryDecoder
        |> JDP.required "categorySpecificSummary" trustedAdvisorCategorySpecificSummaryDecoder




{-| <p>The estimated cost savings that might be realized if the recommended actions are taken.</p>
-}
type alias TrustedAdvisorCostOptimizingSummary =
    { estimatedMonthlySavings : Float
    , estimatedPercentMonthlySavings : Float
    }



trustedAdvisorCostOptimizingSummaryDecoder : JD.Decoder TrustedAdvisorCostOptimizingSummary
trustedAdvisorCostOptimizingSummaryDecoder =
    JDP.decode TrustedAdvisorCostOptimizingSummary
        |> JDP.required "estimatedMonthlySavings" JD.float
        |> JDP.required "estimatedPercentMonthlySavings" JD.float




{-| <p>Contains information about a resource identified by a Trusted Advisor check.</p>
-}
type alias TrustedAdvisorResourceDetail =
    { status : String
    , region : Maybe String
    , resourceId : String
    , isSuppressed : Maybe Bool
    , metadata : (List String)
    }



trustedAdvisorResourceDetailDecoder : JD.Decoder TrustedAdvisorResourceDetail
trustedAdvisorResourceDetailDecoder =
    JDP.decode TrustedAdvisorResourceDetail
        |> JDP.required "status" JD.string
        |> JDP.optional "region" (JD.nullable JD.string) Nothing
        |> JDP.required "resourceId" JD.string
        |> JDP.optional "isSuppressed" (JD.nullable JD.bool) Nothing
        |> JDP.required "metadata" (JD.list JD.string)




{-| <p>Details about AWS resources that were analyzed in a call to Trusted Advisor <a>DescribeTrustedAdvisorCheckSummaries</a>. </p>
-}
type alias TrustedAdvisorResourcesSummary =
    { resourcesProcessed : Int
    , resourcesFlagged : Int
    , resourcesIgnored : Int
    , resourcesSuppressed : Int
    }



trustedAdvisorResourcesSummaryDecoder : JD.Decoder TrustedAdvisorResourcesSummary
trustedAdvisorResourcesSummaryDecoder =
    JDP.decode TrustedAdvisorResourcesSummary
        |> JDP.required "resourcesProcessed" JD.int
        |> JDP.required "resourcesFlagged" JD.int
        |> JDP.required "resourcesIgnored" JD.int
        |> JDP.required "resourcesSuppressed" JD.int




