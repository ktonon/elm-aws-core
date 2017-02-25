module AWS.Services.Inspector
    exposing
        ( config
        , addAttributesToFindings
        , createAssessmentTarget
        , createAssessmentTemplate
        , CreateAssessmentTemplateOptions
        , createResourceGroup
        , deleteAssessmentRun
        , deleteAssessmentTarget
        , deleteAssessmentTemplate
        , describeAssessmentRuns
        , describeAssessmentTargets
        , describeAssessmentTemplates
        , describeCrossAccountAccessRole
        , describeFindings
        , DescribeFindingsOptions
        , describeResourceGroups
        , describeRulesPackages
        , DescribeRulesPackagesOptions
        , getTelemetryMetadata
        , listAssessmentRunAgents
        , ListAssessmentRunAgentsOptions
        , listAssessmentRuns
        , ListAssessmentRunsOptions
        , listAssessmentTargets
        , ListAssessmentTargetsOptions
        , listAssessmentTemplates
        , ListAssessmentTemplatesOptions
        , listEventSubscriptions
        , ListEventSubscriptionsOptions
        , listFindings
        , ListFindingsOptions
        , listRulesPackages
        , ListRulesPackagesOptions
        , listTagsForResource
        , previewAgents
        , PreviewAgentsOptions
        , registerCrossAccountAccessRole
        , removeAttributesFromFindings
        , setTagsForResource
        , SetTagsForResourceOptions
        , startAssessmentRun
        , StartAssessmentRunOptions
        , stopAssessmentRun
        , subscribeToEvent
        , unsubscribeFromEvent
        , updateAssessmentTarget
        , AccessDeniedErrorCode(..)
        , AccessDeniedException
        , AddAttributesToFindingsResponse
        , AgentAlreadyRunningAssessment
        , AgentFilter
        , AgentHealth(..)
        , AgentHealthCode(..)
        , AgentPreview
        , AgentsAlreadyRunningAssessmentException
        , AssessmentRun
        , AssessmentRunAgent
        , AssessmentRunFilter
        , AssessmentRunInProgressException
        , AssessmentRunNotification
        , AssessmentRunNotificationSnsStatusCode(..)
        , AssessmentRunState(..)
        , AssessmentRunStateChange
        , AssessmentTarget
        , AssessmentTargetFilter
        , AssessmentTemplate
        , AssessmentTemplateFilter
        , AssetAttributes
        , AssetType(..)
        , Attribute
        , CreateAssessmentTargetResponse
        , CreateAssessmentTemplateResponse
        , CreateResourceGroupResponse
        , DescribeAssessmentRunsResponse
        , DescribeAssessmentTargetsResponse
        , DescribeAssessmentTemplatesResponse
        , DescribeCrossAccountAccessRoleResponse
        , DescribeFindingsResponse
        , DescribeResourceGroupsResponse
        , DescribeRulesPackagesResponse
        , DurationRange
        , EventSubscription
        , FailedItemDetails
        , FailedItemErrorCode(..)
        , Finding
        , FindingFilter
        , GetTelemetryMetadataResponse
        , InspectorEvent(..)
        , InspectorServiceAttributes
        , InternalException
        , InvalidCrossAccountRoleErrorCode(..)
        , InvalidCrossAccountRoleException
        , InvalidInputErrorCode(..)
        , InvalidInputException
        , LimitExceededErrorCode(..)
        , LimitExceededException
        , ListAssessmentRunAgentsResponse
        , ListAssessmentRunsResponse
        , ListAssessmentTargetsResponse
        , ListAssessmentTemplatesResponse
        , ListEventSubscriptionsResponse
        , ListFindingsResponse
        , ListRulesPackagesResponse
        , ListTagsForResourceResponse
        , Locale(..)
        , NoSuchEntityErrorCode(..)
        , NoSuchEntityException
        , PreviewAgentsResponse
        , RemoveAttributesFromFindingsResponse
        , ResourceGroup
        , ResourceGroupTag
        , RulesPackage
        , Severity(..)
        , StartAssessmentRunResponse
        , Subscription
        , Tag
        , TelemetryMetadata
        , TimestampRange
        )

{-| <fullname>Amazon Inspector</fullname> <p>Amazon Inspector enables you to analyze the behavior of your AWS resources and to identify potential security issues. For more information, see <a href="http://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html"> Amazon Inspector User Guide</a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addAttributesToFindings](#addAttributesToFindings)
* [createAssessmentTarget](#createAssessmentTarget)
* [createAssessmentTemplate](#createAssessmentTemplate)
* [CreateAssessmentTemplateOptions](#CreateAssessmentTemplateOptions)
* [createResourceGroup](#createResourceGroup)
* [deleteAssessmentRun](#deleteAssessmentRun)
* [deleteAssessmentTarget](#deleteAssessmentTarget)
* [deleteAssessmentTemplate](#deleteAssessmentTemplate)
* [describeAssessmentRuns](#describeAssessmentRuns)
* [describeAssessmentTargets](#describeAssessmentTargets)
* [describeAssessmentTemplates](#describeAssessmentTemplates)
* [describeCrossAccountAccessRole](#describeCrossAccountAccessRole)
* [describeFindings](#describeFindings)
* [DescribeFindingsOptions](#DescribeFindingsOptions)
* [describeResourceGroups](#describeResourceGroups)
* [describeRulesPackages](#describeRulesPackages)
* [DescribeRulesPackagesOptions](#DescribeRulesPackagesOptions)
* [getTelemetryMetadata](#getTelemetryMetadata)
* [listAssessmentRunAgents](#listAssessmentRunAgents)
* [ListAssessmentRunAgentsOptions](#ListAssessmentRunAgentsOptions)
* [listAssessmentRuns](#listAssessmentRuns)
* [ListAssessmentRunsOptions](#ListAssessmentRunsOptions)
* [listAssessmentTargets](#listAssessmentTargets)
* [ListAssessmentTargetsOptions](#ListAssessmentTargetsOptions)
* [listAssessmentTemplates](#listAssessmentTemplates)
* [ListAssessmentTemplatesOptions](#ListAssessmentTemplatesOptions)
* [listEventSubscriptions](#listEventSubscriptions)
* [ListEventSubscriptionsOptions](#ListEventSubscriptionsOptions)
* [listFindings](#listFindings)
* [ListFindingsOptions](#ListFindingsOptions)
* [listRulesPackages](#listRulesPackages)
* [ListRulesPackagesOptions](#ListRulesPackagesOptions)
* [listTagsForResource](#listTagsForResource)
* [previewAgents](#previewAgents)
* [PreviewAgentsOptions](#PreviewAgentsOptions)
* [registerCrossAccountAccessRole](#registerCrossAccountAccessRole)
* [removeAttributesFromFindings](#removeAttributesFromFindings)
* [setTagsForResource](#setTagsForResource)
* [SetTagsForResourceOptions](#SetTagsForResourceOptions)
* [startAssessmentRun](#startAssessmentRun)
* [StartAssessmentRunOptions](#StartAssessmentRunOptions)
* [stopAssessmentRun](#stopAssessmentRun)
* [subscribeToEvent](#subscribeToEvent)
* [unsubscribeFromEvent](#unsubscribeFromEvent)
* [updateAssessmentTarget](#updateAssessmentTarget)


@docs addAttributesToFindings,createAssessmentTarget,createAssessmentTemplate,CreateAssessmentTemplateOptions,createResourceGroup,deleteAssessmentRun,deleteAssessmentTarget,deleteAssessmentTemplate,describeAssessmentRuns,describeAssessmentTargets,describeAssessmentTemplates,describeCrossAccountAccessRole,describeFindings,DescribeFindingsOptions,describeResourceGroups,describeRulesPackages,DescribeRulesPackagesOptions,getTelemetryMetadata,listAssessmentRunAgents,ListAssessmentRunAgentsOptions,listAssessmentRuns,ListAssessmentRunsOptions,listAssessmentTargets,ListAssessmentTargetsOptions,listAssessmentTemplates,ListAssessmentTemplatesOptions,listEventSubscriptions,ListEventSubscriptionsOptions,listFindings,ListFindingsOptions,listRulesPackages,ListRulesPackagesOptions,listTagsForResource,previewAgents,PreviewAgentsOptions,registerCrossAccountAccessRole,removeAttributesFromFindings,setTagsForResource,SetTagsForResourceOptions,startAssessmentRun,StartAssessmentRunOptions,stopAssessmentRun,subscribeToEvent,unsubscribeFromEvent,updateAssessmentTarget

## Responses

* [AddAttributesToFindingsResponse](#AddAttributesToFindingsResponse)
* [CreateAssessmentTargetResponse](#CreateAssessmentTargetResponse)
* [CreateAssessmentTemplateResponse](#CreateAssessmentTemplateResponse)
* [CreateResourceGroupResponse](#CreateResourceGroupResponse)
* [DescribeAssessmentRunsResponse](#DescribeAssessmentRunsResponse)
* [DescribeAssessmentTargetsResponse](#DescribeAssessmentTargetsResponse)
* [DescribeAssessmentTemplatesResponse](#DescribeAssessmentTemplatesResponse)
* [DescribeCrossAccountAccessRoleResponse](#DescribeCrossAccountAccessRoleResponse)
* [DescribeFindingsResponse](#DescribeFindingsResponse)
* [DescribeResourceGroupsResponse](#DescribeResourceGroupsResponse)
* [DescribeRulesPackagesResponse](#DescribeRulesPackagesResponse)
* [GetTelemetryMetadataResponse](#GetTelemetryMetadataResponse)
* [ListAssessmentRunAgentsResponse](#ListAssessmentRunAgentsResponse)
* [ListAssessmentRunsResponse](#ListAssessmentRunsResponse)
* [ListAssessmentTargetsResponse](#ListAssessmentTargetsResponse)
* [ListAssessmentTemplatesResponse](#ListAssessmentTemplatesResponse)
* [ListEventSubscriptionsResponse](#ListEventSubscriptionsResponse)
* [ListFindingsResponse](#ListFindingsResponse)
* [ListRulesPackagesResponse](#ListRulesPackagesResponse)
* [ListTagsForResourceResponse](#ListTagsForResourceResponse)
* [PreviewAgentsResponse](#PreviewAgentsResponse)
* [RemoveAttributesFromFindingsResponse](#RemoveAttributesFromFindingsResponse)
* [StartAssessmentRunResponse](#StartAssessmentRunResponse)


@docs AddAttributesToFindingsResponse,CreateAssessmentTargetResponse,CreateAssessmentTemplateResponse,CreateResourceGroupResponse,DescribeAssessmentRunsResponse,DescribeAssessmentTargetsResponse,DescribeAssessmentTemplatesResponse,DescribeCrossAccountAccessRoleResponse,DescribeFindingsResponse,DescribeResourceGroupsResponse,DescribeRulesPackagesResponse,GetTelemetryMetadataResponse,ListAssessmentRunAgentsResponse,ListAssessmentRunsResponse,ListAssessmentTargetsResponse,ListAssessmentTemplatesResponse,ListEventSubscriptionsResponse,ListFindingsResponse,ListRulesPackagesResponse,ListTagsForResourceResponse,PreviewAgentsResponse,RemoveAttributesFromFindingsResponse,StartAssessmentRunResponse

## Records

* [AgentAlreadyRunningAssessment](#AgentAlreadyRunningAssessment)
* [AgentFilter](#AgentFilter)
* [AgentPreview](#AgentPreview)
* [AssessmentRun](#AssessmentRun)
* [AssessmentRunAgent](#AssessmentRunAgent)
* [AssessmentRunFilter](#AssessmentRunFilter)
* [AssessmentRunNotification](#AssessmentRunNotification)
* [AssessmentRunStateChange](#AssessmentRunStateChange)
* [AssessmentTarget](#AssessmentTarget)
* [AssessmentTargetFilter](#AssessmentTargetFilter)
* [AssessmentTemplate](#AssessmentTemplate)
* [AssessmentTemplateFilter](#AssessmentTemplateFilter)
* [AssetAttributes](#AssetAttributes)
* [Attribute](#Attribute)
* [DurationRange](#DurationRange)
* [EventSubscription](#EventSubscription)
* [FailedItemDetails](#FailedItemDetails)
* [Finding](#Finding)
* [FindingFilter](#FindingFilter)
* [InspectorServiceAttributes](#InspectorServiceAttributes)
* [ResourceGroup](#ResourceGroup)
* [ResourceGroupTag](#ResourceGroupTag)
* [RulesPackage](#RulesPackage)
* [Subscription](#Subscription)
* [Tag](#Tag)
* [TelemetryMetadata](#TelemetryMetadata)
* [TimestampRange](#TimestampRange)


@docs AgentAlreadyRunningAssessment,AgentFilter,AgentPreview,AssessmentRun,AssessmentRunAgent,AssessmentRunFilter,AssessmentRunNotification,AssessmentRunStateChange,AssessmentTarget,AssessmentTargetFilter,AssessmentTemplate,AssessmentTemplateFilter,AssetAttributes,Attribute,DurationRange,EventSubscription,FailedItemDetails,Finding,FindingFilter,InspectorServiceAttributes,ResourceGroup,ResourceGroupTag,RulesPackage,Subscription,Tag,TelemetryMetadata,TimestampRange

## Unions

* [AccessDeniedErrorCode](#AccessDeniedErrorCode)
* [AgentHealth](#AgentHealth)
* [AgentHealthCode](#AgentHealthCode)
* [AssessmentRunNotificationSnsStatusCode](#AssessmentRunNotificationSnsStatusCode)
* [AssessmentRunState](#AssessmentRunState)
* [AssetType](#AssetType)
* [FailedItemErrorCode](#FailedItemErrorCode)
* [InspectorEvent](#InspectorEvent)
* [InvalidCrossAccountRoleErrorCode](#InvalidCrossAccountRoleErrorCode)
* [InvalidInputErrorCode](#InvalidInputErrorCode)
* [LimitExceededErrorCode](#LimitExceededErrorCode)
* [Locale](#Locale)
* [NoSuchEntityErrorCode](#NoSuchEntityErrorCode)
* [Severity](#Severity)


@docs AccessDeniedErrorCode,AgentHealth,AgentHealthCode,AssessmentRunNotificationSnsStatusCode,AssessmentRunState,AssetType,FailedItemErrorCode,InspectorEvent,InvalidCrossAccountRoleErrorCode,InvalidInputErrorCode,LimitExceededErrorCode,Locale,NoSuchEntityErrorCode,Severity

## Exceptions

* [AccessDeniedException](#AccessDeniedException)
* [AgentsAlreadyRunningAssessmentException](#AgentsAlreadyRunningAssessmentException)
* [AssessmentRunInProgressException](#AssessmentRunInProgressException)
* [InternalException](#InternalException)
* [InvalidCrossAccountRoleException](#InvalidCrossAccountRoleException)
* [InvalidInputException](#InvalidInputException)
* [LimitExceededException](#LimitExceededException)
* [NoSuchEntityException](#NoSuchEntityException)


@docs AccessDeniedException,AgentsAlreadyRunningAssessmentException,AssessmentRunInProgressException,InternalException,InvalidCrossAccountRoleException,InvalidInputException,LimitExceededException,NoSuchEntityException

-}

import AWS
import AWS.Config
import AWS.Http
import AWS.Util
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Dict exposing (Dict)
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config maybeCreds =
    AWS.Config.Service
        "inspector"
        "2016-02-16"
        "1.1"
        "AWSINSPECTOR_20160216."
        "inspector.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Assigns attributes (key and value pairs) to the findings that are specified by the ARNs of the findings.</p>

__Required Parameters__

* `findingArns` __:__ `(List String)`
* `attributes` __:__ `(List Attribute)`


-}
addAttributesToFindings :
    (List String)
    -> (List Attribute)
    -> AWS.Request AddAttributesToFindingsResponse
addAttributesToFindings findingArns attributes =
    AWS.Http.unsignedRequest
        "AddAttributesToFindings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addAttributesToFindingsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new assessment target using the ARN of the resource group that is generated by <a>CreateResourceGroup</a>. You can create up to 50 assessment targets per AWS account. You can run up to 500 concurrent agents per AWS account. For more information, see <a href="http://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html"> Amazon Inspector Assessment Targets</a>.</p>

__Required Parameters__

* `assessmentTargetName` __:__ `String`
* `resourceGroupArn` __:__ `String`


-}
createAssessmentTarget :
    String
    -> String
    -> AWS.Request CreateAssessmentTargetResponse
createAssessmentTarget assessmentTargetName resourceGroupArn =
    AWS.Http.unsignedRequest
        "CreateAssessmentTarget"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createAssessmentTargetResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates an assessment template for the assessment target that is specified by the ARN of the assessment target.</p>

__Required Parameters__

* `assessmentTargetArn` __:__ `String`
* `assessmentTemplateName` __:__ `String`
* `durationInSeconds` __:__ `Int`
* `rulesPackageArns` __:__ `(List String)`


-}
createAssessmentTemplate :
    String
    -> String
    -> Int
    -> (List String)
    -> (CreateAssessmentTemplateOptions -> CreateAssessmentTemplateOptions)
    -> AWS.Request CreateAssessmentTemplateResponse
createAssessmentTemplate assessmentTargetArn assessmentTemplateName durationInSeconds rulesPackageArns setOptions =
  let
    options = setOptions (CreateAssessmentTemplateOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateAssessmentTemplate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createAssessmentTemplateResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createAssessmentTemplate request
-}
type alias CreateAssessmentTemplateOptions =
    { userAttributesForFindings : Maybe (List Attribute)
    }



{-| <p>Creates a resource group using the specified set of tags (key and value pairs) that are used to select the EC2 instances to be included in an Amazon Inspector assessment target. The created resource group is then used to create an Amazon Inspector assessment target. For more information, see <a>CreateAssessmentTarget</a>.</p>

__Required Parameters__

* `resourceGroupTags` __:__ `(List ResourceGroupTag)`


-}
createResourceGroup :
    (List ResourceGroupTag)
    -> AWS.Request CreateResourceGroupResponse
createResourceGroup resourceGroupTags =
    AWS.Http.unsignedRequest
        "CreateResourceGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createResourceGroupResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the assessment run that is specified by the ARN of the assessment run.</p>

__Required Parameters__

* `assessmentRunArn` __:__ `String`


-}
deleteAssessmentRun :
    String
    -> AWS.Request ()
deleteAssessmentRun assessmentRunArn =
    AWS.Http.unsignedRequest
        "DeleteAssessmentRun"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the assessment target that is specified by the ARN of the assessment target.</p>

__Required Parameters__

* `assessmentTargetArn` __:__ `String`


-}
deleteAssessmentTarget :
    String
    -> AWS.Request ()
deleteAssessmentTarget assessmentTargetArn =
    AWS.Http.unsignedRequest
        "DeleteAssessmentTarget"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the assessment template that is specified by the ARN of the assessment template.</p>

__Required Parameters__

* `assessmentTemplateArn` __:__ `String`


-}
deleteAssessmentTemplate :
    String
    -> AWS.Request ()
deleteAssessmentTemplate assessmentTemplateArn =
    AWS.Http.unsignedRequest
        "DeleteAssessmentTemplate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Describes the assessment runs that are specified by the ARNs of the assessment runs.</p>

__Required Parameters__

* `assessmentRunArns` __:__ `(List String)`


-}
describeAssessmentRuns :
    (List String)
    -> AWS.Request DescribeAssessmentRunsResponse
describeAssessmentRuns assessmentRunArns =
    AWS.Http.unsignedRequest
        "DescribeAssessmentRuns"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAssessmentRunsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the assessment targets that are specified by the ARNs of the assessment targets.</p>

__Required Parameters__

* `assessmentTargetArns` __:__ `(List String)`


-}
describeAssessmentTargets :
    (List String)
    -> AWS.Request DescribeAssessmentTargetsResponse
describeAssessmentTargets assessmentTargetArns =
    AWS.Http.unsignedRequest
        "DescribeAssessmentTargets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAssessmentTargetsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the assessment templates that are specified by the ARNs of the assessment templates.</p>

__Required Parameters__

* `assessmentTemplateArns` __:__ `(List String)`


-}
describeAssessmentTemplates :
    (List String)
    -> AWS.Request DescribeAssessmentTemplatesResponse
describeAssessmentTemplates assessmentTemplateArns =
    AWS.Http.unsignedRequest
        "DescribeAssessmentTemplates"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAssessmentTemplatesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the IAM role that enables Amazon Inspector to access your AWS account.</p>

__Required Parameters__



-}
describeCrossAccountAccessRole :
    AWS.Request DescribeCrossAccountAccessRoleResponse
describeCrossAccountAccessRole =
    AWS.Http.unsignedRequest
        "DescribeCrossAccountAccessRole"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeCrossAccountAccessRoleResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the findings that are specified by the ARNs of the findings.</p>

__Required Parameters__

* `findingArns` __:__ `(List String)`


-}
describeFindings :
    (List String)
    -> (DescribeFindingsOptions -> DescribeFindingsOptions)
    -> AWS.Request DescribeFindingsResponse
describeFindings findingArns setOptions =
  let
    options = setOptions (DescribeFindingsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeFindings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeFindingsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeFindings request
-}
type alias DescribeFindingsOptions =
    { locale : Maybe Locale
    }



{-| <p>Describes the resource groups that are specified by the ARNs of the resource groups.</p>

__Required Parameters__

* `resourceGroupArns` __:__ `(List String)`


-}
describeResourceGroups :
    (List String)
    -> AWS.Request DescribeResourceGroupsResponse
describeResourceGroups resourceGroupArns =
    AWS.Http.unsignedRequest
        "DescribeResourceGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeResourceGroupsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the rules packages that are specified by the ARNs of the rules packages.</p>

__Required Parameters__

* `rulesPackageArns` __:__ `(List String)`


-}
describeRulesPackages :
    (List String)
    -> (DescribeRulesPackagesOptions -> DescribeRulesPackagesOptions)
    -> AWS.Request DescribeRulesPackagesResponse
describeRulesPackages rulesPackageArns setOptions =
  let
    options = setOptions (DescribeRulesPackagesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeRulesPackages"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeRulesPackagesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeRulesPackages request
-}
type alias DescribeRulesPackagesOptions =
    { locale : Maybe Locale
    }



{-| <p>Information about the data that is collected for the specified assessment run.</p>

__Required Parameters__

* `assessmentRunArn` __:__ `String`


-}
getTelemetryMetadata :
    String
    -> AWS.Request GetTelemetryMetadataResponse
getTelemetryMetadata assessmentRunArn =
    AWS.Http.unsignedRequest
        "GetTelemetryMetadata"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getTelemetryMetadataResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.</p>

__Required Parameters__

* `assessmentRunArn` __:__ `String`


-}
listAssessmentRunAgents :
    String
    -> (ListAssessmentRunAgentsOptions -> ListAssessmentRunAgentsOptions)
    -> AWS.Request ListAssessmentRunAgentsResponse
listAssessmentRunAgents assessmentRunArn setOptions =
  let
    options = setOptions (ListAssessmentRunAgentsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAssessmentRunAgents"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAssessmentRunAgentsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listAssessmentRunAgents request
-}
type alias ListAssessmentRunAgentsOptions =
    { filter : Maybe AgentFilter
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.</p>

__Required Parameters__



-}
listAssessmentRuns :
    (ListAssessmentRunsOptions -> ListAssessmentRunsOptions)
    -> AWS.Request ListAssessmentRunsResponse
listAssessmentRuns setOptions =
  let
    options = setOptions (ListAssessmentRunsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAssessmentRuns"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAssessmentRunsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listAssessmentRuns request
-}
type alias ListAssessmentRunsOptions =
    { assessmentTemplateArns : Maybe (List String)
    , filter : Maybe AssessmentRunFilter
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Lists the ARNs of the assessment targets within this AWS account. For more information about assessment targets, see <a href="http://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html">Amazon Inspector Assessment Targets</a>.</p>

__Required Parameters__



-}
listAssessmentTargets :
    (ListAssessmentTargetsOptions -> ListAssessmentTargetsOptions)
    -> AWS.Request ListAssessmentTargetsResponse
listAssessmentTargets setOptions =
  let
    options = setOptions (ListAssessmentTargetsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAssessmentTargets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAssessmentTargetsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listAssessmentTargets request
-}
type alias ListAssessmentTargetsOptions =
    { filter : Maybe AssessmentTargetFilter
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.</p>

__Required Parameters__



-}
listAssessmentTemplates :
    (ListAssessmentTemplatesOptions -> ListAssessmentTemplatesOptions)
    -> AWS.Request ListAssessmentTemplatesResponse
listAssessmentTemplates setOptions =
  let
    options = setOptions (ListAssessmentTemplatesOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAssessmentTemplates"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAssessmentTemplatesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listAssessmentTemplates request
-}
type alias ListAssessmentTemplatesOptions =
    { assessmentTargetArns : Maybe (List String)
    , filter : Maybe AssessmentTemplateFilter
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see <a>SubscribeToEvent</a> and <a>UnsubscribeFromEvent</a>.</p>

__Required Parameters__



-}
listEventSubscriptions :
    (ListEventSubscriptionsOptions -> ListEventSubscriptionsOptions)
    -> AWS.Request ListEventSubscriptionsResponse
listEventSubscriptions setOptions =
  let
    options = setOptions (ListEventSubscriptionsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListEventSubscriptions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listEventSubscriptionsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listEventSubscriptions request
-}
type alias ListEventSubscriptionsOptions =
    { resourceArn : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs.</p>

__Required Parameters__



-}
listFindings :
    (ListFindingsOptions -> ListFindingsOptions)
    -> AWS.Request ListFindingsResponse
listFindings setOptions =
  let
    options = setOptions (ListFindingsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListFindings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listFindingsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listFindings request
-}
type alias ListFindingsOptions =
    { assessmentRunArns : Maybe (List String)
    , filter : Maybe FindingFilter
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Lists all available Amazon Inspector rules packages.</p>

__Required Parameters__



-}
listRulesPackages :
    (ListRulesPackagesOptions -> ListRulesPackagesOptions)
    -> AWS.Request ListRulesPackagesResponse
listRulesPackages setOptions =
  let
    options = setOptions (ListRulesPackagesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListRulesPackages"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listRulesPackagesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listRulesPackages request
-}
type alias ListRulesPackagesOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Lists all tags associated with an assessment template.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}
listTagsForResource :
    String
    -> AWS.Request ListTagsForResourceResponse
listTagsForResource resourceArn =
    AWS.Http.unsignedRequest
        "ListTagsForResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTagsForResourceResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Previews the agents installed on the EC2 instances that are part of the specified assessment target.</p>

__Required Parameters__

* `previewAgentsArn` __:__ `String`


-}
previewAgents :
    String
    -> (PreviewAgentsOptions -> PreviewAgentsOptions)
    -> AWS.Request PreviewAgentsResponse
previewAgents previewAgentsArn setOptions =
  let
    options = setOptions (PreviewAgentsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PreviewAgents"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        previewAgentsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a previewAgents request
-}
type alias PreviewAgentsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Registers the IAM role that Amazon Inspector uses to list your EC2 instances at the start of the assessment run or when you call the <a>PreviewAgents</a> action.</p>

__Required Parameters__

* `roleArn` __:__ `String`


-}
registerCrossAccountAccessRole :
    String
    -> AWS.Request ()
registerCrossAccountAccessRole roleArn =
    AWS.Http.unsignedRequest
        "RegisterCrossAccountAccessRole"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Removes entire attributes (key and value pairs) from the findings that are specified by the ARNs of the findings where an attribute with the specified key exists.</p>

__Required Parameters__

* `findingArns` __:__ `(List String)`
* `attributeKeys` __:__ `(List String)`


-}
removeAttributesFromFindings :
    (List String)
    -> (List String)
    -> AWS.Request RemoveAttributesFromFindingsResponse
removeAttributesFromFindings findingArns attributeKeys =
    AWS.Http.unsignedRequest
        "RemoveAttributesFromFindings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        removeAttributesFromFindingsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Sets tags (key and value pairs) to the assessment template that is specified by the ARN of the assessment template.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}
setTagsForResource :
    String
    -> (SetTagsForResourceOptions -> SetTagsForResourceOptions)
    -> AWS.Request ()
setTagsForResource resourceArn setOptions =
  let
    options = setOptions (SetTagsForResourceOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "SetTagsForResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a setTagsForResource request
-}
type alias SetTagsForResourceOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Starts the assessment run specified by the ARN of the assessment template. For this API to function properly, you must not exceed the limit of running up to 500 concurrent agents per AWS account.</p>

__Required Parameters__

* `assessmentTemplateArn` __:__ `String`


-}
startAssessmentRun :
    String
    -> (StartAssessmentRunOptions -> StartAssessmentRunOptions)
    -> AWS.Request StartAssessmentRunResponse
startAssessmentRun assessmentTemplateArn setOptions =
  let
    options = setOptions (StartAssessmentRunOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "StartAssessmentRun"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startAssessmentRunResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a startAssessmentRun request
-}
type alias StartAssessmentRunOptions =
    { assessmentRunName : Maybe String
    }



{-| <p>Stops the assessment run that is specified by the ARN of the assessment run.</p>

__Required Parameters__

* `assessmentRunArn` __:__ `String`


-}
stopAssessmentRun :
    String
    -> AWS.Request ()
stopAssessmentRun assessmentRunArn =
    AWS.Http.unsignedRequest
        "StopAssessmentRun"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Enables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `event` __:__ `InspectorEvent`
* `topicArn` __:__ `String`


-}
subscribeToEvent :
    String
    -> InspectorEvent
    -> String
    -> AWS.Request ()
subscribeToEvent resourceArn event topicArn =
    AWS.Http.unsignedRequest
        "SubscribeToEvent"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Disables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `event` __:__ `InspectorEvent`
* `topicArn` __:__ `String`


-}
unsubscribeFromEvent :
    String
    -> InspectorEvent
    -> String
    -> AWS.Request ()
unsubscribeFromEvent resourceArn event topicArn =
    AWS.Http.unsignedRequest
        "UnsubscribeFromEvent"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Updates the assessment target that is specified by the ARN of the assessment target.</p>

__Required Parameters__

* `assessmentTargetArn` __:__ `String`
* `assessmentTargetName` __:__ `String`
* `resourceGroupArn` __:__ `String`


-}
updateAssessmentTarget :
    String
    -> String
    -> String
    -> AWS.Request ()
updateAssessmentTarget assessmentTargetArn assessmentTargetName resourceGroupArn =
    AWS.Http.unsignedRequest
        "UpdateAssessmentTarget"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest




{-| One of

* `AccessDeniedErrorCode_ACCESS_DENIED_TO_ASSESSMENT_TARGET`
* `AccessDeniedErrorCode_ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE`
* `AccessDeniedErrorCode_ACCESS_DENIED_TO_ASSESSMENT_RUN`
* `AccessDeniedErrorCode_ACCESS_DENIED_TO_FINDING`
* `AccessDeniedErrorCode_ACCESS_DENIED_TO_RESOURCE_GROUP`
* `AccessDeniedErrorCode_ACCESS_DENIED_TO_RULES_PACKAGE`
* `AccessDeniedErrorCode_ACCESS_DENIED_TO_SNS_TOPIC`
* `AccessDeniedErrorCode_ACCESS_DENIED_TO_IAM_ROLE`

-}
type AccessDeniedErrorCode
    = AccessDeniedErrorCode_ACCESS_DENIED_TO_ASSESSMENT_TARGET
    | AccessDeniedErrorCode_ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE
    | AccessDeniedErrorCode_ACCESS_DENIED_TO_ASSESSMENT_RUN
    | AccessDeniedErrorCode_ACCESS_DENIED_TO_FINDING
    | AccessDeniedErrorCode_ACCESS_DENIED_TO_RESOURCE_GROUP
    | AccessDeniedErrorCode_ACCESS_DENIED_TO_RULES_PACKAGE
    | AccessDeniedErrorCode_ACCESS_DENIED_TO_SNS_TOPIC
    | AccessDeniedErrorCode_ACCESS_DENIED_TO_IAM_ROLE



accessDeniedErrorCodeDecoder : JD.Decoder AccessDeniedErrorCode
accessDeniedErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACCESS_DENIED_TO_ASSESSMENT_TARGET" ->
                        JD.succeed AccessDeniedErrorCode_ACCESS_DENIED_TO_ASSESSMENT_TARGET

                    "ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE" ->
                        JD.succeed AccessDeniedErrorCode_ACCESS_DENIED_TO_ASSESSMENT_TEMPLATE

                    "ACCESS_DENIED_TO_ASSESSMENT_RUN" ->
                        JD.succeed AccessDeniedErrorCode_ACCESS_DENIED_TO_ASSESSMENT_RUN

                    "ACCESS_DENIED_TO_FINDING" ->
                        JD.succeed AccessDeniedErrorCode_ACCESS_DENIED_TO_FINDING

                    "ACCESS_DENIED_TO_RESOURCE_GROUP" ->
                        JD.succeed AccessDeniedErrorCode_ACCESS_DENIED_TO_RESOURCE_GROUP

                    "ACCESS_DENIED_TO_RULES_PACKAGE" ->
                        JD.succeed AccessDeniedErrorCode_ACCESS_DENIED_TO_RULES_PACKAGE

                    "ACCESS_DENIED_TO_SNS_TOPIC" ->
                        JD.succeed AccessDeniedErrorCode_ACCESS_DENIED_TO_SNS_TOPIC

                    "ACCESS_DENIED_TO_IAM_ROLE" ->
                        JD.succeed AccessDeniedErrorCode_ACCESS_DENIED_TO_IAM_ROLE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>You do not have required permissions to access the requested resource.</p>
-}
type alias AccessDeniedException =
    { message : String
    , errorCode : AccessDeniedErrorCode
    , canRetry : Bool
    }



accessDeniedExceptionDecoder : JD.Decoder AccessDeniedException
accessDeniedExceptionDecoder =
    JDP.decode AccessDeniedException
        |> JDP.required "message" JD.string
        |> JDP.required "errorCode" accessDeniedErrorCodeDecoder
        |> JDP.required "canRetry" JD.bool




{-| Type of HTTP response from addAttributesToFindings
-}
type alias AddAttributesToFindingsResponse =
    { failedItems : (Dict String FailedItemDetails)
    }



addAttributesToFindingsResponseDecoder : JD.Decoder AddAttributesToFindingsResponse
addAttributesToFindingsResponseDecoder =
    JDP.decode AddAttributesToFindingsResponse
        |> JDP.required "failedItems" (JD.dict failedItemDetailsDecoder)




{-| <p>Used in the exception error that is thrown if you start an assessment run for an assessment target that includes an EC2 instance that is already participating in another started assessment run.</p>
-}
type alias AgentAlreadyRunningAssessment =
    { agentId : String
    , assessmentRunArn : String
    }



agentAlreadyRunningAssessmentDecoder : JD.Decoder AgentAlreadyRunningAssessment
agentAlreadyRunningAssessmentDecoder =
    JDP.decode AgentAlreadyRunningAssessment
        |> JDP.required "agentId" JD.string
        |> JDP.required "assessmentRunArn" JD.string




{-| <p>Contains information about an Amazon Inspector agent. This data type is used as a request parameter in the <a>ListAssessmentRunAgents</a> action.</p>
-}
type alias AgentFilter =
    { agentHealths : (List AgentHealth)
    , agentHealthCodes : (List AgentHealthCode)
    }



agentFilterDecoder : JD.Decoder AgentFilter
agentFilterDecoder =
    JDP.decode AgentFilter
        |> JDP.required "agentHealths" (JD.list agentHealthDecoder)
        |> JDP.required "agentHealthCodes" (JD.list agentHealthCodeDecoder)




{-| One of

* `AgentHealth_HEALTHY`
* `AgentHealth_UNHEALTHY`

-}
type AgentHealth
    = AgentHealth_HEALTHY
    | AgentHealth_UNHEALTHY



agentHealthDecoder : JD.Decoder AgentHealth
agentHealthDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HEALTHY" ->
                        JD.succeed AgentHealth_HEALTHY

                    "UNHEALTHY" ->
                        JD.succeed AgentHealth_UNHEALTHY


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `AgentHealthCode_IDLE`
* `AgentHealthCode_RUNNING`
* `AgentHealthCode_SHUTDOWN`
* `AgentHealthCode_UNHEALTHY`
* `AgentHealthCode_THROTTLED`
* `AgentHealthCode_UNKNOWN`

-}
type AgentHealthCode
    = AgentHealthCode_IDLE
    | AgentHealthCode_RUNNING
    | AgentHealthCode_SHUTDOWN
    | AgentHealthCode_UNHEALTHY
    | AgentHealthCode_THROTTLED
    | AgentHealthCode_UNKNOWN



agentHealthCodeDecoder : JD.Decoder AgentHealthCode
agentHealthCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IDLE" ->
                        JD.succeed AgentHealthCode_IDLE

                    "RUNNING" ->
                        JD.succeed AgentHealthCode_RUNNING

                    "SHUTDOWN" ->
                        JD.succeed AgentHealthCode_SHUTDOWN

                    "UNHEALTHY" ->
                        JD.succeed AgentHealthCode_UNHEALTHY

                    "THROTTLED" ->
                        JD.succeed AgentHealthCode_THROTTLED

                    "UNKNOWN" ->
                        JD.succeed AgentHealthCode_UNKNOWN


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Used as a response element in the <a>PreviewAgents</a> action.</p>
-}
type alias AgentPreview =
    { agentId : String
    , autoScalingGroup : Maybe String
    }



agentPreviewDecoder : JD.Decoder AgentPreview
agentPreviewDecoder =
    JDP.decode AgentPreview
        |> JDP.required "agentId" JD.string
        |> JDP.optional "autoScalingGroup" (JD.nullable JD.string) Nothing




{-| <p>You started an assessment run, but one of the instances is already participating in another assessment run.</p>
-}
type alias AgentsAlreadyRunningAssessmentException =
    { message : String
    , agents : (List AgentAlreadyRunningAssessment)
    , agentsTruncated : Bool
    , canRetry : Bool
    }



agentsAlreadyRunningAssessmentExceptionDecoder : JD.Decoder AgentsAlreadyRunningAssessmentException
agentsAlreadyRunningAssessmentExceptionDecoder =
    JDP.decode AgentsAlreadyRunningAssessmentException
        |> JDP.required "message" JD.string
        |> JDP.required "agents" (JD.list agentAlreadyRunningAssessmentDecoder)
        |> JDP.required "agentsTruncated" JD.bool
        |> JDP.required "canRetry" JD.bool




{-| <p>A snapshot of an Amazon Inspector assessment run that contains the findings of the assessment run .</p> <p>Used as the response element in the <a>DescribeAssessmentRuns</a> action.</p>
-}
type alias AssessmentRun =
    { arn : String
    , name : String
    , assessmentTemplateArn : String
    , state : AssessmentRunState
    , durationInSeconds : Int
    , rulesPackageArns : (List String)
    , userAttributesForFindings : (List Attribute)
    , createdAt : Date
    , startedAt : Maybe Date
    , completedAt : Maybe Date
    , stateChangedAt : Date
    , dataCollected : Bool
    , stateChanges : (List AssessmentRunStateChange)
    , notifications : (List AssessmentRunNotification)
    }



assessmentRunDecoder : JD.Decoder AssessmentRun
assessmentRunDecoder =
    JDP.decode AssessmentRun
        |> JDP.required "arn" JD.string
        |> JDP.required "name" JD.string
        |> JDP.required "assessmentTemplateArn" JD.string
        |> JDP.required "state" assessmentRunStateDecoder
        |> JDP.required "durationInSeconds" JD.int
        |> JDP.required "rulesPackageArns" (JD.list JD.string)
        |> JDP.required "userAttributesForFindings" (JD.list attributeDecoder)
        |> JDP.required "createdAt" JDX.date
        |> JDP.optional "startedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "completedAt" (JD.nullable JDX.date) Nothing
        |> JDP.required "stateChangedAt" JDX.date
        |> JDP.required "dataCollected" JD.bool
        |> JDP.required "stateChanges" (JD.list assessmentRunStateChangeDecoder)
        |> JDP.required "notifications" (JD.list assessmentRunNotificationDecoder)




{-| <p>Contains information about an Amazon Inspector agent. This data type is used as a response element in the <a>ListAssessmentRunAgents</a> action.</p>
-}
type alias AssessmentRunAgent =
    { agentId : String
    , assessmentRunArn : String
    , agentHealth : AgentHealth
    , agentHealthCode : AgentHealthCode
    , agentHealthDetails : Maybe String
    , autoScalingGroup : Maybe String
    , telemetryMetadata : (List TelemetryMetadata)
    }



assessmentRunAgentDecoder : JD.Decoder AssessmentRunAgent
assessmentRunAgentDecoder =
    JDP.decode AssessmentRunAgent
        |> JDP.required "agentId" JD.string
        |> JDP.required "assessmentRunArn" JD.string
        |> JDP.required "agentHealth" agentHealthDecoder
        |> JDP.required "agentHealthCode" agentHealthCodeDecoder
        |> JDP.optional "agentHealthDetails" (JD.nullable JD.string) Nothing
        |> JDP.optional "autoScalingGroup" (JD.nullable JD.string) Nothing
        |> JDP.required "telemetryMetadata" (JD.list telemetryMetadataDecoder)




{-| <p>Used as the request parameter in the <a>ListAssessmentRuns</a> action.</p>
-}
type alias AssessmentRunFilter =
    { namePattern : Maybe String
    , states : Maybe (List AssessmentRunState)
    , durationRange : Maybe DurationRange
    , rulesPackageArns : Maybe (List String)
    , startTimeRange : Maybe TimestampRange
    , completionTimeRange : Maybe TimestampRange
    , stateChangeTimeRange : Maybe TimestampRange
    }



assessmentRunFilterDecoder : JD.Decoder AssessmentRunFilter
assessmentRunFilterDecoder =
    JDP.decode AssessmentRunFilter
        |> JDP.optional "namePattern" (JD.nullable JD.string) Nothing
        |> JDP.optional "states" (JD.nullable (JD.list assessmentRunStateDecoder)) Nothing
        |> JDP.optional "durationRange" (JD.nullable durationRangeDecoder) Nothing
        |> JDP.optional "rulesPackageArns" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "startTimeRange" (JD.nullable timestampRangeDecoder) Nothing
        |> JDP.optional "completionTimeRange" (JD.nullable timestampRangeDecoder) Nothing
        |> JDP.optional "stateChangeTimeRange" (JD.nullable timestampRangeDecoder) Nothing




{-| <p>You cannot perform a specified action if an assessment run is currently in progress.</p>
-}
type alias AssessmentRunInProgressException =
    { message : String
    , assessmentRunArns : (List String)
    , assessmentRunArnsTruncated : Bool
    , canRetry : Bool
    }



assessmentRunInProgressExceptionDecoder : JD.Decoder AssessmentRunInProgressException
assessmentRunInProgressExceptionDecoder =
    JDP.decode AssessmentRunInProgressException
        |> JDP.required "message" JD.string
        |> JDP.required "assessmentRunArns" (JD.list JD.string)
        |> JDP.required "assessmentRunArnsTruncated" JD.bool
        |> JDP.required "canRetry" JD.bool




{-| <p>Used as one of the elements of the <a>AssessmentRun</a> data type.</p>
-}
type alias AssessmentRunNotification =
    { date : Date
    , event : InspectorEvent
    , message : Maybe String
    , error : Bool
    , snsTopicArn : Maybe String
    , snsPublishStatusCode : Maybe AssessmentRunNotificationSnsStatusCode
    }



assessmentRunNotificationDecoder : JD.Decoder AssessmentRunNotification
assessmentRunNotificationDecoder =
    JDP.decode AssessmentRunNotification
        |> JDP.required "date" JDX.date
        |> JDP.required "event" inspectorEventDecoder
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.required "error" JD.bool
        |> JDP.optional "snsTopicArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "snsPublishStatusCode" (JD.nullable assessmentRunNotificationSnsStatusCodeDecoder) Nothing




{-| One of

* `AssessmentRunNotificationSnsStatusCode_SUCCESS`
* `AssessmentRunNotificationSnsStatusCode_TOPIC_DOES_NOT_EXIST`
* `AssessmentRunNotificationSnsStatusCode_ACCESS_DENIED`
* `AssessmentRunNotificationSnsStatusCode_INTERNAL_ERROR`

-}
type AssessmentRunNotificationSnsStatusCode
    = AssessmentRunNotificationSnsStatusCode_SUCCESS
    | AssessmentRunNotificationSnsStatusCode_TOPIC_DOES_NOT_EXIST
    | AssessmentRunNotificationSnsStatusCode_ACCESS_DENIED
    | AssessmentRunNotificationSnsStatusCode_INTERNAL_ERROR



assessmentRunNotificationSnsStatusCodeDecoder : JD.Decoder AssessmentRunNotificationSnsStatusCode
assessmentRunNotificationSnsStatusCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUCCESS" ->
                        JD.succeed AssessmentRunNotificationSnsStatusCode_SUCCESS

                    "TOPIC_DOES_NOT_EXIST" ->
                        JD.succeed AssessmentRunNotificationSnsStatusCode_TOPIC_DOES_NOT_EXIST

                    "ACCESS_DENIED" ->
                        JD.succeed AssessmentRunNotificationSnsStatusCode_ACCESS_DENIED

                    "INTERNAL_ERROR" ->
                        JD.succeed AssessmentRunNotificationSnsStatusCode_INTERNAL_ERROR


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `AssessmentRunState_CREATED`
* `AssessmentRunState_START_DATA_COLLECTION_PENDING`
* `AssessmentRunState_START_DATA_COLLECTION_IN_PROGRESS`
* `AssessmentRunState_COLLECTING_DATA`
* `AssessmentRunState_STOP_DATA_COLLECTION_PENDING`
* `AssessmentRunState_DATA_COLLECTED`
* `AssessmentRunState_EVALUATING_RULES`
* `AssessmentRunState_FAILED`
* `AssessmentRunState_COMPLETED`
* `AssessmentRunState_COMPLETED_WITH_ERRORS`

-}
type AssessmentRunState
    = AssessmentRunState_CREATED
    | AssessmentRunState_START_DATA_COLLECTION_PENDING
    | AssessmentRunState_START_DATA_COLLECTION_IN_PROGRESS
    | AssessmentRunState_COLLECTING_DATA
    | AssessmentRunState_STOP_DATA_COLLECTION_PENDING
    | AssessmentRunState_DATA_COLLECTED
    | AssessmentRunState_EVALUATING_RULES
    | AssessmentRunState_FAILED
    | AssessmentRunState_COMPLETED
    | AssessmentRunState_COMPLETED_WITH_ERRORS



assessmentRunStateDecoder : JD.Decoder AssessmentRunState
assessmentRunStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATED" ->
                        JD.succeed AssessmentRunState_CREATED

                    "START_DATA_COLLECTION_PENDING" ->
                        JD.succeed AssessmentRunState_START_DATA_COLLECTION_PENDING

                    "START_DATA_COLLECTION_IN_PROGRESS" ->
                        JD.succeed AssessmentRunState_START_DATA_COLLECTION_IN_PROGRESS

                    "COLLECTING_DATA" ->
                        JD.succeed AssessmentRunState_COLLECTING_DATA

                    "STOP_DATA_COLLECTION_PENDING" ->
                        JD.succeed AssessmentRunState_STOP_DATA_COLLECTION_PENDING

                    "DATA_COLLECTED" ->
                        JD.succeed AssessmentRunState_DATA_COLLECTED

                    "EVALUATING_RULES" ->
                        JD.succeed AssessmentRunState_EVALUATING_RULES

                    "FAILED" ->
                        JD.succeed AssessmentRunState_FAILED

                    "COMPLETED" ->
                        JD.succeed AssessmentRunState_COMPLETED

                    "COMPLETED_WITH_ERRORS" ->
                        JD.succeed AssessmentRunState_COMPLETED_WITH_ERRORS


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Used as one of the elements of the <a>AssessmentRun</a> data type.</p>
-}
type alias AssessmentRunStateChange =
    { stateChangedAt : Date
    , state : AssessmentRunState
    }



assessmentRunStateChangeDecoder : JD.Decoder AssessmentRunStateChange
assessmentRunStateChangeDecoder =
    JDP.decode AssessmentRunStateChange
        |> JDP.required "stateChangedAt" JDX.date
        |> JDP.required "state" assessmentRunStateDecoder




{-| <p>Contains information about an Amazon Inspector application. This data type is used as the response element in the <a>DescribeAssessmentTargets</a> action.</p>
-}
type alias AssessmentTarget =
    { arn : String
    , name : String
    , resourceGroupArn : String
    , createdAt : Date
    , updatedAt : Date
    }



assessmentTargetDecoder : JD.Decoder AssessmentTarget
assessmentTargetDecoder =
    JDP.decode AssessmentTarget
        |> JDP.required "arn" JD.string
        |> JDP.required "name" JD.string
        |> JDP.required "resourceGroupArn" JD.string
        |> JDP.required "createdAt" JDX.date
        |> JDP.required "updatedAt" JDX.date




{-| <p>Used as the request parameter in the <a>ListAssessmentTargets</a> action.</p>
-}
type alias AssessmentTargetFilter =
    { assessmentTargetNamePattern : Maybe String
    }



assessmentTargetFilterDecoder : JD.Decoder AssessmentTargetFilter
assessmentTargetFilterDecoder =
    JDP.decode AssessmentTargetFilter
        |> JDP.optional "assessmentTargetNamePattern" (JD.nullable JD.string) Nothing




{-| <p>Contains information about an Amazon Inspector assessment template. This data type is used as the response element in the <a>DescribeAssessmentTemplates</a> action.</p>
-}
type alias AssessmentTemplate =
    { arn : String
    , name : String
    , assessmentTargetArn : String
    , durationInSeconds : Int
    , rulesPackageArns : (List String)
    , userAttributesForFindings : (List Attribute)
    , createdAt : Date
    }



assessmentTemplateDecoder : JD.Decoder AssessmentTemplate
assessmentTemplateDecoder =
    JDP.decode AssessmentTemplate
        |> JDP.required "arn" JD.string
        |> JDP.required "name" JD.string
        |> JDP.required "assessmentTargetArn" JD.string
        |> JDP.required "durationInSeconds" JD.int
        |> JDP.required "rulesPackageArns" (JD.list JD.string)
        |> JDP.required "userAttributesForFindings" (JD.list attributeDecoder)
        |> JDP.required "createdAt" JDX.date




{-| <p>Used as the request parameter in the <a>ListAssessmentTemplates</a> action.</p>
-}
type alias AssessmentTemplateFilter =
    { namePattern : Maybe String
    , durationRange : Maybe DurationRange
    , rulesPackageArns : Maybe (List String)
    }



assessmentTemplateFilterDecoder : JD.Decoder AssessmentTemplateFilter
assessmentTemplateFilterDecoder =
    JDP.decode AssessmentTemplateFilter
        |> JDP.optional "namePattern" (JD.nullable JD.string) Nothing
        |> JDP.optional "durationRange" (JD.nullable durationRangeDecoder) Nothing
        |> JDP.optional "rulesPackageArns" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>A collection of attributes of the host from which the finding is generated.</p>
-}
type alias AssetAttributes =
    { schemaVersion : Int
    , agentId : Maybe String
    , autoScalingGroup : Maybe String
    , amiId : Maybe String
    , hostname : Maybe String
    , ipv4Addresses : Maybe (List String)
    }



assetAttributesDecoder : JD.Decoder AssetAttributes
assetAttributesDecoder =
    JDP.decode AssetAttributes
        |> JDP.required "schemaVersion" JD.int
        |> JDP.optional "agentId" (JD.nullable JD.string) Nothing
        |> JDP.optional "autoScalingGroup" (JD.nullable JD.string) Nothing
        |> JDP.optional "amiId" (JD.nullable JD.string) Nothing
        |> JDP.optional "hostname" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipv4Addresses" (JD.nullable (JD.list JD.string)) Nothing




{-| One of

* `AssetType_ec2-instance`

-}
type AssetType
    = AssetType_ec2_instance



assetTypeDecoder : JD.Decoder AssetType
assetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ec2_instance" ->
                        JD.succeed AssetType_ec2_instance


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>This data type is used as a request parameter in the <a>AddAttributesToFindings</a> and <a>CreateAssessmentTemplate</a> actions.</p>
-}
type alias Attribute =
    { key : String
    , value : Maybe String
    }



attributeDecoder : JD.Decoder Attribute
attributeDecoder =
    JDP.decode Attribute
        |> JDP.required "key" JD.string
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createAssessmentTarget
-}
type alias CreateAssessmentTargetResponse =
    { assessmentTargetArn : String
    }



createAssessmentTargetResponseDecoder : JD.Decoder CreateAssessmentTargetResponse
createAssessmentTargetResponseDecoder =
    JDP.decode CreateAssessmentTargetResponse
        |> JDP.required "assessmentTargetArn" JD.string




{-| Type of HTTP response from createAssessmentTemplate
-}
type alias CreateAssessmentTemplateResponse =
    { assessmentTemplateArn : String
    }



createAssessmentTemplateResponseDecoder : JD.Decoder CreateAssessmentTemplateResponse
createAssessmentTemplateResponseDecoder =
    JDP.decode CreateAssessmentTemplateResponse
        |> JDP.required "assessmentTemplateArn" JD.string




{-| Type of HTTP response from createResourceGroup
-}
type alias CreateResourceGroupResponse =
    { resourceGroupArn : String
    }



createResourceGroupResponseDecoder : JD.Decoder CreateResourceGroupResponse
createResourceGroupResponseDecoder =
    JDP.decode CreateResourceGroupResponse
        |> JDP.required "resourceGroupArn" JD.string




{-| Type of HTTP response from describeAssessmentRuns
-}
type alias DescribeAssessmentRunsResponse =
    { assessmentRuns : (List AssessmentRun)
    , failedItems : (Dict String FailedItemDetails)
    }



describeAssessmentRunsResponseDecoder : JD.Decoder DescribeAssessmentRunsResponse
describeAssessmentRunsResponseDecoder =
    JDP.decode DescribeAssessmentRunsResponse
        |> JDP.required "assessmentRuns" (JD.list assessmentRunDecoder)
        |> JDP.required "failedItems" (JD.dict failedItemDetailsDecoder)




{-| Type of HTTP response from describeAssessmentTargets
-}
type alias DescribeAssessmentTargetsResponse =
    { assessmentTargets : (List AssessmentTarget)
    , failedItems : (Dict String FailedItemDetails)
    }



describeAssessmentTargetsResponseDecoder : JD.Decoder DescribeAssessmentTargetsResponse
describeAssessmentTargetsResponseDecoder =
    JDP.decode DescribeAssessmentTargetsResponse
        |> JDP.required "assessmentTargets" (JD.list assessmentTargetDecoder)
        |> JDP.required "failedItems" (JD.dict failedItemDetailsDecoder)




{-| Type of HTTP response from describeAssessmentTemplates
-}
type alias DescribeAssessmentTemplatesResponse =
    { assessmentTemplates : (List AssessmentTemplate)
    , failedItems : (Dict String FailedItemDetails)
    }



describeAssessmentTemplatesResponseDecoder : JD.Decoder DescribeAssessmentTemplatesResponse
describeAssessmentTemplatesResponseDecoder =
    JDP.decode DescribeAssessmentTemplatesResponse
        |> JDP.required "assessmentTemplates" (JD.list assessmentTemplateDecoder)
        |> JDP.required "failedItems" (JD.dict failedItemDetailsDecoder)




{-| Type of HTTP response from describeCrossAccountAccessRole
-}
type alias DescribeCrossAccountAccessRoleResponse =
    { roleArn : String
    , valid : Bool
    , registeredAt : Date
    }



describeCrossAccountAccessRoleResponseDecoder : JD.Decoder DescribeCrossAccountAccessRoleResponse
describeCrossAccountAccessRoleResponseDecoder =
    JDP.decode DescribeCrossAccountAccessRoleResponse
        |> JDP.required "roleArn" JD.string
        |> JDP.required "valid" JD.bool
        |> JDP.required "registeredAt" JDX.date




{-| Type of HTTP response from describeFindings
-}
type alias DescribeFindingsResponse =
    { findings : (List Finding)
    , failedItems : (Dict String FailedItemDetails)
    }



describeFindingsResponseDecoder : JD.Decoder DescribeFindingsResponse
describeFindingsResponseDecoder =
    JDP.decode DescribeFindingsResponse
        |> JDP.required "findings" (JD.list findingDecoder)
        |> JDP.required "failedItems" (JD.dict failedItemDetailsDecoder)




{-| Type of HTTP response from describeResourceGroups
-}
type alias DescribeResourceGroupsResponse =
    { resourceGroups : (List ResourceGroup)
    , failedItems : (Dict String FailedItemDetails)
    }



describeResourceGroupsResponseDecoder : JD.Decoder DescribeResourceGroupsResponse
describeResourceGroupsResponseDecoder =
    JDP.decode DescribeResourceGroupsResponse
        |> JDP.required "resourceGroups" (JD.list resourceGroupDecoder)
        |> JDP.required "failedItems" (JD.dict failedItemDetailsDecoder)




{-| Type of HTTP response from describeRulesPackages
-}
type alias DescribeRulesPackagesResponse =
    { rulesPackages : (List RulesPackage)
    , failedItems : (Dict String FailedItemDetails)
    }



describeRulesPackagesResponseDecoder : JD.Decoder DescribeRulesPackagesResponse
describeRulesPackagesResponseDecoder =
    JDP.decode DescribeRulesPackagesResponse
        |> JDP.required "rulesPackages" (JD.list rulesPackageDecoder)
        |> JDP.required "failedItems" (JD.dict failedItemDetailsDecoder)




{-| <p>This data type is used in the <a>AssessmentTemplateFilter</a> data type.</p>
-}
type alias DurationRange =
    { minSeconds : Maybe Int
    , maxSeconds : Maybe Int
    }



durationRangeDecoder : JD.Decoder DurationRange
durationRangeDecoder =
    JDP.decode DurationRange
        |> JDP.optional "minSeconds" (JD.nullable JD.int) Nothing
        |> JDP.optional "maxSeconds" (JD.nullable JD.int) Nothing




{-| <p>This data type is used in the <a>Subscription</a> data type.</p>
-}
type alias EventSubscription =
    { event : InspectorEvent
    , subscribedAt : Date
    }



eventSubscriptionDecoder : JD.Decoder EventSubscription
eventSubscriptionDecoder =
    JDP.decode EventSubscription
        |> JDP.required "event" inspectorEventDecoder
        |> JDP.required "subscribedAt" JDX.date




{-| <p>Includes details about the failed items.</p>
-}
type alias FailedItemDetails =
    { failureCode : FailedItemErrorCode
    , retryable : Bool
    }



failedItemDetailsDecoder : JD.Decoder FailedItemDetails
failedItemDetailsDecoder =
    JDP.decode FailedItemDetails
        |> JDP.required "failureCode" failedItemErrorCodeDecoder
        |> JDP.required "retryable" JD.bool




{-| One of

* `FailedItemErrorCode_INVALID_ARN`
* `FailedItemErrorCode_DUPLICATE_ARN`
* `FailedItemErrorCode_ITEM_DOES_NOT_EXIST`
* `FailedItemErrorCode_ACCESS_DENIED`
* `FailedItemErrorCode_LIMIT_EXCEEDED`
* `FailedItemErrorCode_INTERNAL_ERROR`

-}
type FailedItemErrorCode
    = FailedItemErrorCode_INVALID_ARN
    | FailedItemErrorCode_DUPLICATE_ARN
    | FailedItemErrorCode_ITEM_DOES_NOT_EXIST
    | FailedItemErrorCode_ACCESS_DENIED
    | FailedItemErrorCode_LIMIT_EXCEEDED
    | FailedItemErrorCode_INTERNAL_ERROR



failedItemErrorCodeDecoder : JD.Decoder FailedItemErrorCode
failedItemErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INVALID_ARN" ->
                        JD.succeed FailedItemErrorCode_INVALID_ARN

                    "DUPLICATE_ARN" ->
                        JD.succeed FailedItemErrorCode_DUPLICATE_ARN

                    "ITEM_DOES_NOT_EXIST" ->
                        JD.succeed FailedItemErrorCode_ITEM_DOES_NOT_EXIST

                    "ACCESS_DENIED" ->
                        JD.succeed FailedItemErrorCode_ACCESS_DENIED

                    "LIMIT_EXCEEDED" ->
                        JD.succeed FailedItemErrorCode_LIMIT_EXCEEDED

                    "INTERNAL_ERROR" ->
                        JD.succeed FailedItemErrorCode_INTERNAL_ERROR


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Contains information about an Amazon Inspector finding. This data type is used as the response element in the <a>DescribeFindings</a> action.</p>
-}
type alias Finding =
    { arn : String
    , schemaVersion : Maybe Int
    , service : Maybe String
    , serviceAttributes : Maybe InspectorServiceAttributes
    , assetType : Maybe AssetType
    , assetAttributes : Maybe AssetAttributes
    , id : Maybe String
    , title : Maybe String
    , description : Maybe String
    , recommendation : Maybe String
    , severity : Maybe Severity
    , numericSeverity : Maybe Float
    , confidence : Maybe Int
    , indicatorOfCompromise : Maybe Bool
    , attributes : (List Attribute)
    , userAttributes : (List Attribute)
    , createdAt : Date
    , updatedAt : Date
    }



findingDecoder : JD.Decoder Finding
findingDecoder =
    JDP.decode Finding
        |> JDP.required "arn" JD.string
        |> JDP.optional "schemaVersion" (JD.nullable JD.int) Nothing
        |> JDP.optional "service" (JD.nullable JD.string) Nothing
        |> JDP.optional "serviceAttributes" (JD.nullable inspectorServiceAttributesDecoder) Nothing
        |> JDP.optional "assetType" (JD.nullable assetTypeDecoder) Nothing
        |> JDP.optional "assetAttributes" (JD.nullable assetAttributesDecoder) Nothing
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "title" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "recommendation" (JD.nullable JD.string) Nothing
        |> JDP.optional "severity" (JD.nullable severityDecoder) Nothing
        |> JDP.optional "numericSeverity" (JD.nullable JD.float) Nothing
        |> JDP.optional "confidence" (JD.nullable JD.int) Nothing
        |> JDP.optional "indicatorOfCompromise" (JD.nullable JD.bool) Nothing
        |> JDP.required "attributes" (JD.list attributeDecoder)
        |> JDP.required "userAttributes" (JD.list attributeDecoder)
        |> JDP.required "createdAt" JDX.date
        |> JDP.required "updatedAt" JDX.date




{-| <p>This data type is used as a request parameter in the <a>ListFindings</a> action.</p>
-}
type alias FindingFilter =
    { agentIds : Maybe (List String)
    , autoScalingGroups : Maybe (List String)
    , ruleNames : Maybe (List String)
    , severities : Maybe (List Severity)
    , rulesPackageArns : Maybe (List String)
    , attributes : Maybe (List Attribute)
    , userAttributes : Maybe (List Attribute)
    , creationTimeRange : Maybe TimestampRange
    }



findingFilterDecoder : JD.Decoder FindingFilter
findingFilterDecoder =
    JDP.decode FindingFilter
        |> JDP.optional "agentIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "autoScalingGroups" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "ruleNames" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "severities" (JD.nullable (JD.list severityDecoder)) Nothing
        |> JDP.optional "rulesPackageArns" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "attributes" (JD.nullable (JD.list attributeDecoder)) Nothing
        |> JDP.optional "userAttributes" (JD.nullable (JD.list attributeDecoder)) Nothing
        |> JDP.optional "creationTimeRange" (JD.nullable timestampRangeDecoder) Nothing




{-| Type of HTTP response from getTelemetryMetadata
-}
type alias GetTelemetryMetadataResponse =
    { telemetryMetadata : (List TelemetryMetadata)
    }



getTelemetryMetadataResponseDecoder : JD.Decoder GetTelemetryMetadataResponse
getTelemetryMetadataResponseDecoder =
    JDP.decode GetTelemetryMetadataResponse
        |> JDP.required "telemetryMetadata" (JD.list telemetryMetadataDecoder)




{-| One of

* `InspectorEvent_ASSESSMENT_RUN_STARTED`
* `InspectorEvent_ASSESSMENT_RUN_COMPLETED`
* `InspectorEvent_ASSESSMENT_RUN_STATE_CHANGED`
* `InspectorEvent_FINDING_REPORTED`
* `InspectorEvent_OTHER`

-}
type InspectorEvent
    = InspectorEvent_ASSESSMENT_RUN_STARTED
    | InspectorEvent_ASSESSMENT_RUN_COMPLETED
    | InspectorEvent_ASSESSMENT_RUN_STATE_CHANGED
    | InspectorEvent_FINDING_REPORTED
    | InspectorEvent_OTHER



inspectorEventDecoder : JD.Decoder InspectorEvent
inspectorEventDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ASSESSMENT_RUN_STARTED" ->
                        JD.succeed InspectorEvent_ASSESSMENT_RUN_STARTED

                    "ASSESSMENT_RUN_COMPLETED" ->
                        JD.succeed InspectorEvent_ASSESSMENT_RUN_COMPLETED

                    "ASSESSMENT_RUN_STATE_CHANGED" ->
                        JD.succeed InspectorEvent_ASSESSMENT_RUN_STATE_CHANGED

                    "FINDING_REPORTED" ->
                        JD.succeed InspectorEvent_FINDING_REPORTED

                    "OTHER" ->
                        JD.succeed InspectorEvent_OTHER


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>This data type is used in the <a>Finding</a> data type.</p>
-}
type alias InspectorServiceAttributes =
    { schemaVersion : Int
    , assessmentRunArn : Maybe String
    , rulesPackageArn : Maybe String
    }



inspectorServiceAttributesDecoder : JD.Decoder InspectorServiceAttributes
inspectorServiceAttributesDecoder =
    JDP.decode InspectorServiceAttributes
        |> JDP.required "schemaVersion" JD.int
        |> JDP.optional "assessmentRunArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "rulesPackageArn" (JD.nullable JD.string) Nothing




{-| <p>Internal server error.</p>
-}
type alias InternalException =
    { message : String
    , canRetry : Bool
    }



internalExceptionDecoder : JD.Decoder InternalException
internalExceptionDecoder =
    JDP.decode InternalException
        |> JDP.required "message" JD.string
        |> JDP.required "canRetry" JD.bool




{-| One of

* `InvalidCrossAccountRoleErrorCode_ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP`
* `InvalidCrossAccountRoleErrorCode_ROLE_DOES_NOT_HAVE_CORRECT_POLICY`

-}
type InvalidCrossAccountRoleErrorCode
    = InvalidCrossAccountRoleErrorCode_ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP
    | InvalidCrossAccountRoleErrorCode_ROLE_DOES_NOT_HAVE_CORRECT_POLICY



invalidCrossAccountRoleErrorCodeDecoder : JD.Decoder InvalidCrossAccountRoleErrorCode
invalidCrossAccountRoleErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP" ->
                        JD.succeed InvalidCrossAccountRoleErrorCode_ROLE_DOES_NOT_EXIST_OR_INVALID_TRUST_RELATIONSHIP

                    "ROLE_DOES_NOT_HAVE_CORRECT_POLICY" ->
                        JD.succeed InvalidCrossAccountRoleErrorCode_ROLE_DOES_NOT_HAVE_CORRECT_POLICY


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Amazon Inspector cannot assume the cross-account role that it needs to list your EC2 instances during the assessment run.</p>
-}
type alias InvalidCrossAccountRoleException =
    { message : String
    , errorCode : InvalidCrossAccountRoleErrorCode
    , canRetry : Bool
    }



invalidCrossAccountRoleExceptionDecoder : JD.Decoder InvalidCrossAccountRoleException
invalidCrossAccountRoleExceptionDecoder =
    JDP.decode InvalidCrossAccountRoleException
        |> JDP.required "message" JD.string
        |> JDP.required "errorCode" invalidCrossAccountRoleErrorCodeDecoder
        |> JDP.required "canRetry" JD.bool




{-| One of

* `InvalidInputErrorCode_INVALID_ASSESSMENT_TARGET_ARN`
* `InvalidInputErrorCode_INVALID_ASSESSMENT_TEMPLATE_ARN`
* `InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_ARN`
* `InvalidInputErrorCode_INVALID_FINDING_ARN`
* `InvalidInputErrorCode_INVALID_RESOURCE_GROUP_ARN`
* `InvalidInputErrorCode_INVALID_RULES_PACKAGE_ARN`
* `InvalidInputErrorCode_INVALID_RESOURCE_ARN`
* `InvalidInputErrorCode_INVALID_SNS_TOPIC_ARN`
* `InvalidInputErrorCode_INVALID_IAM_ROLE_ARN`
* `InvalidInputErrorCode_INVALID_ASSESSMENT_TARGET_NAME`
* `InvalidInputErrorCode_INVALID_ASSESSMENT_TARGET_NAME_PATTERN`
* `InvalidInputErrorCode_INVALID_ASSESSMENT_TEMPLATE_NAME`
* `InvalidInputErrorCode_INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN`
* `InvalidInputErrorCode_INVALID_ASSESSMENT_TEMPLATE_DURATION`
* `InvalidInputErrorCode_INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE`
* `InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_DURATION_RANGE`
* `InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_START_TIME_RANGE`
* `InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE`
* `InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE`
* `InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_STATE`
* `InvalidInputErrorCode_INVALID_TAG`
* `InvalidInputErrorCode_INVALID_TAG_KEY`
* `InvalidInputErrorCode_INVALID_TAG_VALUE`
* `InvalidInputErrorCode_INVALID_RESOURCE_GROUP_TAG_KEY`
* `InvalidInputErrorCode_INVALID_RESOURCE_GROUP_TAG_VALUE`
* `InvalidInputErrorCode_INVALID_ATTRIBUTE`
* `InvalidInputErrorCode_INVALID_USER_ATTRIBUTE`
* `InvalidInputErrorCode_INVALID_USER_ATTRIBUTE_KEY`
* `InvalidInputErrorCode_INVALID_USER_ATTRIBUTE_VALUE`
* `InvalidInputErrorCode_INVALID_PAGINATION_TOKEN`
* `InvalidInputErrorCode_INVALID_MAX_RESULTS`
* `InvalidInputErrorCode_INVALID_AGENT_ID`
* `InvalidInputErrorCode_INVALID_AUTO_SCALING_GROUP`
* `InvalidInputErrorCode_INVALID_RULE_NAME`
* `InvalidInputErrorCode_INVALID_SEVERITY`
* `InvalidInputErrorCode_INVALID_LOCALE`
* `InvalidInputErrorCode_INVALID_EVENT`
* `InvalidInputErrorCode_ASSESSMENT_TARGET_NAME_ALREADY_TAKEN`
* `InvalidInputErrorCode_ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN`
* `InvalidInputErrorCode_INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS`
* `InvalidInputErrorCode_INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS`
* `InvalidInputErrorCode_INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS`
* `InvalidInputErrorCode_INVALID_NUMBER_OF_FINDING_ARNS`
* `InvalidInputErrorCode_INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS`
* `InvalidInputErrorCode_INVALID_NUMBER_OF_RULES_PACKAGE_ARNS`
* `InvalidInputErrorCode_INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES`
* `InvalidInputErrorCode_INVALID_NUMBER_OF_TAGS`
* `InvalidInputErrorCode_INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS`
* `InvalidInputErrorCode_INVALID_NUMBER_OF_ATTRIBUTES`
* `InvalidInputErrorCode_INVALID_NUMBER_OF_USER_ATTRIBUTES`
* `InvalidInputErrorCode_INVALID_NUMBER_OF_AGENT_IDS`
* `InvalidInputErrorCode_INVALID_NUMBER_OF_AUTO_SCALING_GROUPS`
* `InvalidInputErrorCode_INVALID_NUMBER_OF_RULE_NAMES`
* `InvalidInputErrorCode_INVALID_NUMBER_OF_SEVERITIES`

-}
type InvalidInputErrorCode
    = InvalidInputErrorCode_INVALID_ASSESSMENT_TARGET_ARN
    | InvalidInputErrorCode_INVALID_ASSESSMENT_TEMPLATE_ARN
    | InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_ARN
    | InvalidInputErrorCode_INVALID_FINDING_ARN
    | InvalidInputErrorCode_INVALID_RESOURCE_GROUP_ARN
    | InvalidInputErrorCode_INVALID_RULES_PACKAGE_ARN
    | InvalidInputErrorCode_INVALID_RESOURCE_ARN
    | InvalidInputErrorCode_INVALID_SNS_TOPIC_ARN
    | InvalidInputErrorCode_INVALID_IAM_ROLE_ARN
    | InvalidInputErrorCode_INVALID_ASSESSMENT_TARGET_NAME
    | InvalidInputErrorCode_INVALID_ASSESSMENT_TARGET_NAME_PATTERN
    | InvalidInputErrorCode_INVALID_ASSESSMENT_TEMPLATE_NAME
    | InvalidInputErrorCode_INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN
    | InvalidInputErrorCode_INVALID_ASSESSMENT_TEMPLATE_DURATION
    | InvalidInputErrorCode_INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE
    | InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_DURATION_RANGE
    | InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_START_TIME_RANGE
    | InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE
    | InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE
    | InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_STATE
    | InvalidInputErrorCode_INVALID_TAG
    | InvalidInputErrorCode_INVALID_TAG_KEY
    | InvalidInputErrorCode_INVALID_TAG_VALUE
    | InvalidInputErrorCode_INVALID_RESOURCE_GROUP_TAG_KEY
    | InvalidInputErrorCode_INVALID_RESOURCE_GROUP_TAG_VALUE
    | InvalidInputErrorCode_INVALID_ATTRIBUTE
    | InvalidInputErrorCode_INVALID_USER_ATTRIBUTE
    | InvalidInputErrorCode_INVALID_USER_ATTRIBUTE_KEY
    | InvalidInputErrorCode_INVALID_USER_ATTRIBUTE_VALUE
    | InvalidInputErrorCode_INVALID_PAGINATION_TOKEN
    | InvalidInputErrorCode_INVALID_MAX_RESULTS
    | InvalidInputErrorCode_INVALID_AGENT_ID
    | InvalidInputErrorCode_INVALID_AUTO_SCALING_GROUP
    | InvalidInputErrorCode_INVALID_RULE_NAME
    | InvalidInputErrorCode_INVALID_SEVERITY
    | InvalidInputErrorCode_INVALID_LOCALE
    | InvalidInputErrorCode_INVALID_EVENT
    | InvalidInputErrorCode_ASSESSMENT_TARGET_NAME_ALREADY_TAKEN
    | InvalidInputErrorCode_ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN
    | InvalidInputErrorCode_INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS
    | InvalidInputErrorCode_INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS
    | InvalidInputErrorCode_INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS
    | InvalidInputErrorCode_INVALID_NUMBER_OF_FINDING_ARNS
    | InvalidInputErrorCode_INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS
    | InvalidInputErrorCode_INVALID_NUMBER_OF_RULES_PACKAGE_ARNS
    | InvalidInputErrorCode_INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES
    | InvalidInputErrorCode_INVALID_NUMBER_OF_TAGS
    | InvalidInputErrorCode_INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS
    | InvalidInputErrorCode_INVALID_NUMBER_OF_ATTRIBUTES
    | InvalidInputErrorCode_INVALID_NUMBER_OF_USER_ATTRIBUTES
    | InvalidInputErrorCode_INVALID_NUMBER_OF_AGENT_IDS
    | InvalidInputErrorCode_INVALID_NUMBER_OF_AUTO_SCALING_GROUPS
    | InvalidInputErrorCode_INVALID_NUMBER_OF_RULE_NAMES
    | InvalidInputErrorCode_INVALID_NUMBER_OF_SEVERITIES



invalidInputErrorCodeDecoder : JD.Decoder InvalidInputErrorCode
invalidInputErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INVALID_ASSESSMENT_TARGET_ARN" ->
                        JD.succeed InvalidInputErrorCode_INVALID_ASSESSMENT_TARGET_ARN

                    "INVALID_ASSESSMENT_TEMPLATE_ARN" ->
                        JD.succeed InvalidInputErrorCode_INVALID_ASSESSMENT_TEMPLATE_ARN

                    "INVALID_ASSESSMENT_RUN_ARN" ->
                        JD.succeed InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_ARN

                    "INVALID_FINDING_ARN" ->
                        JD.succeed InvalidInputErrorCode_INVALID_FINDING_ARN

                    "INVALID_RESOURCE_GROUP_ARN" ->
                        JD.succeed InvalidInputErrorCode_INVALID_RESOURCE_GROUP_ARN

                    "INVALID_RULES_PACKAGE_ARN" ->
                        JD.succeed InvalidInputErrorCode_INVALID_RULES_PACKAGE_ARN

                    "INVALID_RESOURCE_ARN" ->
                        JD.succeed InvalidInputErrorCode_INVALID_RESOURCE_ARN

                    "INVALID_SNS_TOPIC_ARN" ->
                        JD.succeed InvalidInputErrorCode_INVALID_SNS_TOPIC_ARN

                    "INVALID_IAM_ROLE_ARN" ->
                        JD.succeed InvalidInputErrorCode_INVALID_IAM_ROLE_ARN

                    "INVALID_ASSESSMENT_TARGET_NAME" ->
                        JD.succeed InvalidInputErrorCode_INVALID_ASSESSMENT_TARGET_NAME

                    "INVALID_ASSESSMENT_TARGET_NAME_PATTERN" ->
                        JD.succeed InvalidInputErrorCode_INVALID_ASSESSMENT_TARGET_NAME_PATTERN

                    "INVALID_ASSESSMENT_TEMPLATE_NAME" ->
                        JD.succeed InvalidInputErrorCode_INVALID_ASSESSMENT_TEMPLATE_NAME

                    "INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN" ->
                        JD.succeed InvalidInputErrorCode_INVALID_ASSESSMENT_TEMPLATE_NAME_PATTERN

                    "INVALID_ASSESSMENT_TEMPLATE_DURATION" ->
                        JD.succeed InvalidInputErrorCode_INVALID_ASSESSMENT_TEMPLATE_DURATION

                    "INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE" ->
                        JD.succeed InvalidInputErrorCode_INVALID_ASSESSMENT_TEMPLATE_DURATION_RANGE

                    "INVALID_ASSESSMENT_RUN_DURATION_RANGE" ->
                        JD.succeed InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_DURATION_RANGE

                    "INVALID_ASSESSMENT_RUN_START_TIME_RANGE" ->
                        JD.succeed InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_START_TIME_RANGE

                    "INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE" ->
                        JD.succeed InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_COMPLETION_TIME_RANGE

                    "INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE" ->
                        JD.succeed InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_STATE_CHANGE_TIME_RANGE

                    "INVALID_ASSESSMENT_RUN_STATE" ->
                        JD.succeed InvalidInputErrorCode_INVALID_ASSESSMENT_RUN_STATE

                    "INVALID_TAG" ->
                        JD.succeed InvalidInputErrorCode_INVALID_TAG

                    "INVALID_TAG_KEY" ->
                        JD.succeed InvalidInputErrorCode_INVALID_TAG_KEY

                    "INVALID_TAG_VALUE" ->
                        JD.succeed InvalidInputErrorCode_INVALID_TAG_VALUE

                    "INVALID_RESOURCE_GROUP_TAG_KEY" ->
                        JD.succeed InvalidInputErrorCode_INVALID_RESOURCE_GROUP_TAG_KEY

                    "INVALID_RESOURCE_GROUP_TAG_VALUE" ->
                        JD.succeed InvalidInputErrorCode_INVALID_RESOURCE_GROUP_TAG_VALUE

                    "INVALID_ATTRIBUTE" ->
                        JD.succeed InvalidInputErrorCode_INVALID_ATTRIBUTE

                    "INVALID_USER_ATTRIBUTE" ->
                        JD.succeed InvalidInputErrorCode_INVALID_USER_ATTRIBUTE

                    "INVALID_USER_ATTRIBUTE_KEY" ->
                        JD.succeed InvalidInputErrorCode_INVALID_USER_ATTRIBUTE_KEY

                    "INVALID_USER_ATTRIBUTE_VALUE" ->
                        JD.succeed InvalidInputErrorCode_INVALID_USER_ATTRIBUTE_VALUE

                    "INVALID_PAGINATION_TOKEN" ->
                        JD.succeed InvalidInputErrorCode_INVALID_PAGINATION_TOKEN

                    "INVALID_MAX_RESULTS" ->
                        JD.succeed InvalidInputErrorCode_INVALID_MAX_RESULTS

                    "INVALID_AGENT_ID" ->
                        JD.succeed InvalidInputErrorCode_INVALID_AGENT_ID

                    "INVALID_AUTO_SCALING_GROUP" ->
                        JD.succeed InvalidInputErrorCode_INVALID_AUTO_SCALING_GROUP

                    "INVALID_RULE_NAME" ->
                        JD.succeed InvalidInputErrorCode_INVALID_RULE_NAME

                    "INVALID_SEVERITY" ->
                        JD.succeed InvalidInputErrorCode_INVALID_SEVERITY

                    "INVALID_LOCALE" ->
                        JD.succeed InvalidInputErrorCode_INVALID_LOCALE

                    "INVALID_EVENT" ->
                        JD.succeed InvalidInputErrorCode_INVALID_EVENT

                    "ASSESSMENT_TARGET_NAME_ALREADY_TAKEN" ->
                        JD.succeed InvalidInputErrorCode_ASSESSMENT_TARGET_NAME_ALREADY_TAKEN

                    "ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN" ->
                        JD.succeed InvalidInputErrorCode_ASSESSMENT_TEMPLATE_NAME_ALREADY_TAKEN

                    "INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS" ->
                        JD.succeed InvalidInputErrorCode_INVALID_NUMBER_OF_ASSESSMENT_TARGET_ARNS

                    "INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS" ->
                        JD.succeed InvalidInputErrorCode_INVALID_NUMBER_OF_ASSESSMENT_TEMPLATE_ARNS

                    "INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS" ->
                        JD.succeed InvalidInputErrorCode_INVALID_NUMBER_OF_ASSESSMENT_RUN_ARNS

                    "INVALID_NUMBER_OF_FINDING_ARNS" ->
                        JD.succeed InvalidInputErrorCode_INVALID_NUMBER_OF_FINDING_ARNS

                    "INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS" ->
                        JD.succeed InvalidInputErrorCode_INVALID_NUMBER_OF_RESOURCE_GROUP_ARNS

                    "INVALID_NUMBER_OF_RULES_PACKAGE_ARNS" ->
                        JD.succeed InvalidInputErrorCode_INVALID_NUMBER_OF_RULES_PACKAGE_ARNS

                    "INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES" ->
                        JD.succeed InvalidInputErrorCode_INVALID_NUMBER_OF_ASSESSMENT_RUN_STATES

                    "INVALID_NUMBER_OF_TAGS" ->
                        JD.succeed InvalidInputErrorCode_INVALID_NUMBER_OF_TAGS

                    "INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS" ->
                        JD.succeed InvalidInputErrorCode_INVALID_NUMBER_OF_RESOURCE_GROUP_TAGS

                    "INVALID_NUMBER_OF_ATTRIBUTES" ->
                        JD.succeed InvalidInputErrorCode_INVALID_NUMBER_OF_ATTRIBUTES

                    "INVALID_NUMBER_OF_USER_ATTRIBUTES" ->
                        JD.succeed InvalidInputErrorCode_INVALID_NUMBER_OF_USER_ATTRIBUTES

                    "INVALID_NUMBER_OF_AGENT_IDS" ->
                        JD.succeed InvalidInputErrorCode_INVALID_NUMBER_OF_AGENT_IDS

                    "INVALID_NUMBER_OF_AUTO_SCALING_GROUPS" ->
                        JD.succeed InvalidInputErrorCode_INVALID_NUMBER_OF_AUTO_SCALING_GROUPS

                    "INVALID_NUMBER_OF_RULE_NAMES" ->
                        JD.succeed InvalidInputErrorCode_INVALID_NUMBER_OF_RULE_NAMES

                    "INVALID_NUMBER_OF_SEVERITIES" ->
                        JD.succeed InvalidInputErrorCode_INVALID_NUMBER_OF_SEVERITIES


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The request was rejected because an invalid or out-of-range value was supplied for an input parameter.</p>
-}
type alias InvalidInputException =
    { message : String
    , errorCode : InvalidInputErrorCode
    , canRetry : Bool
    }



invalidInputExceptionDecoder : JD.Decoder InvalidInputException
invalidInputExceptionDecoder =
    JDP.decode InvalidInputException
        |> JDP.required "message" JD.string
        |> JDP.required "errorCode" invalidInputErrorCodeDecoder
        |> JDP.required "canRetry" JD.bool




{-| One of

* `LimitExceededErrorCode_ASSESSMENT_TARGET_LIMIT_EXCEEDED`
* `LimitExceededErrorCode_ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED`
* `LimitExceededErrorCode_ASSESSMENT_RUN_LIMIT_EXCEEDED`
* `LimitExceededErrorCode_RESOURCE_GROUP_LIMIT_EXCEEDED`
* `LimitExceededErrorCode_EVENT_SUBSCRIPTION_LIMIT_EXCEEDED`

-}
type LimitExceededErrorCode
    = LimitExceededErrorCode_ASSESSMENT_TARGET_LIMIT_EXCEEDED
    | LimitExceededErrorCode_ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED
    | LimitExceededErrorCode_ASSESSMENT_RUN_LIMIT_EXCEEDED
    | LimitExceededErrorCode_RESOURCE_GROUP_LIMIT_EXCEEDED
    | LimitExceededErrorCode_EVENT_SUBSCRIPTION_LIMIT_EXCEEDED



limitExceededErrorCodeDecoder : JD.Decoder LimitExceededErrorCode
limitExceededErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ASSESSMENT_TARGET_LIMIT_EXCEEDED" ->
                        JD.succeed LimitExceededErrorCode_ASSESSMENT_TARGET_LIMIT_EXCEEDED

                    "ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED" ->
                        JD.succeed LimitExceededErrorCode_ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED

                    "ASSESSMENT_RUN_LIMIT_EXCEEDED" ->
                        JD.succeed LimitExceededErrorCode_ASSESSMENT_RUN_LIMIT_EXCEEDED

                    "RESOURCE_GROUP_LIMIT_EXCEEDED" ->
                        JD.succeed LimitExceededErrorCode_RESOURCE_GROUP_LIMIT_EXCEEDED

                    "EVENT_SUBSCRIPTION_LIMIT_EXCEEDED" ->
                        JD.succeed LimitExceededErrorCode_EVENT_SUBSCRIPTION_LIMIT_EXCEEDED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The request was rejected because it attempted to create resources beyond the current AWS account limits. The error code describes the limit exceeded.</p>
-}
type alias LimitExceededException =
    { message : String
    , errorCode : LimitExceededErrorCode
    , canRetry : Bool
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.required "message" JD.string
        |> JDP.required "errorCode" limitExceededErrorCodeDecoder
        |> JDP.required "canRetry" JD.bool




{-| Type of HTTP response from listAssessmentRunAgents
-}
type alias ListAssessmentRunAgentsResponse =
    { assessmentRunAgents : (List AssessmentRunAgent)
    , nextToken : Maybe String
    }



listAssessmentRunAgentsResponseDecoder : JD.Decoder ListAssessmentRunAgentsResponse
listAssessmentRunAgentsResponseDecoder =
    JDP.decode ListAssessmentRunAgentsResponse
        |> JDP.required "assessmentRunAgents" (JD.list assessmentRunAgentDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAssessmentRuns
-}
type alias ListAssessmentRunsResponse =
    { assessmentRunArns : (List String)
    , nextToken : Maybe String
    }



listAssessmentRunsResponseDecoder : JD.Decoder ListAssessmentRunsResponse
listAssessmentRunsResponseDecoder =
    JDP.decode ListAssessmentRunsResponse
        |> JDP.required "assessmentRunArns" (JD.list JD.string)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAssessmentTargets
-}
type alias ListAssessmentTargetsResponse =
    { assessmentTargetArns : (List String)
    , nextToken : Maybe String
    }



listAssessmentTargetsResponseDecoder : JD.Decoder ListAssessmentTargetsResponse
listAssessmentTargetsResponseDecoder =
    JDP.decode ListAssessmentTargetsResponse
        |> JDP.required "assessmentTargetArns" (JD.list JD.string)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAssessmentTemplates
-}
type alias ListAssessmentTemplatesResponse =
    { assessmentTemplateArns : (List String)
    , nextToken : Maybe String
    }



listAssessmentTemplatesResponseDecoder : JD.Decoder ListAssessmentTemplatesResponse
listAssessmentTemplatesResponseDecoder =
    JDP.decode ListAssessmentTemplatesResponse
        |> JDP.required "assessmentTemplateArns" (JD.list JD.string)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listEventSubscriptions
-}
type alias ListEventSubscriptionsResponse =
    { subscriptions : (List Subscription)
    , nextToken : Maybe String
    }



listEventSubscriptionsResponseDecoder : JD.Decoder ListEventSubscriptionsResponse
listEventSubscriptionsResponseDecoder =
    JDP.decode ListEventSubscriptionsResponse
        |> JDP.required "subscriptions" (JD.list subscriptionDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listFindings
-}
type alias ListFindingsResponse =
    { findingArns : (List String)
    , nextToken : Maybe String
    }



listFindingsResponseDecoder : JD.Decoder ListFindingsResponse
listFindingsResponseDecoder =
    JDP.decode ListFindingsResponse
        |> JDP.required "findingArns" (JD.list JD.string)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listRulesPackages
-}
type alias ListRulesPackagesResponse =
    { rulesPackageArns : (List String)
    , nextToken : Maybe String
    }



listRulesPackagesResponseDecoder : JD.Decoder ListRulesPackagesResponse
listRulesPackagesResponseDecoder =
    JDP.decode ListRulesPackagesResponse
        |> JDP.required "rulesPackageArns" (JD.list JD.string)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listTagsForResource
-}
type alias ListTagsForResourceResponse =
    { tags : (List Tag)
    }



listTagsForResourceResponseDecoder : JD.Decoder ListTagsForResourceResponse
listTagsForResourceResponseDecoder =
    JDP.decode ListTagsForResourceResponse
        |> JDP.required "tags" (JD.list tagDecoder)




{-| One of

* `Locale_EN_US`

-}
type Locale
    = Locale_EN_US



localeDecoder : JD.Decoder Locale
localeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EN_US" ->
                        JD.succeed Locale_EN_US


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `NoSuchEntityErrorCode_ASSESSMENT_TARGET_DOES_NOT_EXIST`
* `NoSuchEntityErrorCode_ASSESSMENT_TEMPLATE_DOES_NOT_EXIST`
* `NoSuchEntityErrorCode_ASSESSMENT_RUN_DOES_NOT_EXIST`
* `NoSuchEntityErrorCode_FINDING_DOES_NOT_EXIST`
* `NoSuchEntityErrorCode_RESOURCE_GROUP_DOES_NOT_EXIST`
* `NoSuchEntityErrorCode_RULES_PACKAGE_DOES_NOT_EXIST`
* `NoSuchEntityErrorCode_SNS_TOPIC_DOES_NOT_EXIST`
* `NoSuchEntityErrorCode_IAM_ROLE_DOES_NOT_EXIST`

-}
type NoSuchEntityErrorCode
    = NoSuchEntityErrorCode_ASSESSMENT_TARGET_DOES_NOT_EXIST
    | NoSuchEntityErrorCode_ASSESSMENT_TEMPLATE_DOES_NOT_EXIST
    | NoSuchEntityErrorCode_ASSESSMENT_RUN_DOES_NOT_EXIST
    | NoSuchEntityErrorCode_FINDING_DOES_NOT_EXIST
    | NoSuchEntityErrorCode_RESOURCE_GROUP_DOES_NOT_EXIST
    | NoSuchEntityErrorCode_RULES_PACKAGE_DOES_NOT_EXIST
    | NoSuchEntityErrorCode_SNS_TOPIC_DOES_NOT_EXIST
    | NoSuchEntityErrorCode_IAM_ROLE_DOES_NOT_EXIST



noSuchEntityErrorCodeDecoder : JD.Decoder NoSuchEntityErrorCode
noSuchEntityErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ASSESSMENT_TARGET_DOES_NOT_EXIST" ->
                        JD.succeed NoSuchEntityErrorCode_ASSESSMENT_TARGET_DOES_NOT_EXIST

                    "ASSESSMENT_TEMPLATE_DOES_NOT_EXIST" ->
                        JD.succeed NoSuchEntityErrorCode_ASSESSMENT_TEMPLATE_DOES_NOT_EXIST

                    "ASSESSMENT_RUN_DOES_NOT_EXIST" ->
                        JD.succeed NoSuchEntityErrorCode_ASSESSMENT_RUN_DOES_NOT_EXIST

                    "FINDING_DOES_NOT_EXIST" ->
                        JD.succeed NoSuchEntityErrorCode_FINDING_DOES_NOT_EXIST

                    "RESOURCE_GROUP_DOES_NOT_EXIST" ->
                        JD.succeed NoSuchEntityErrorCode_RESOURCE_GROUP_DOES_NOT_EXIST

                    "RULES_PACKAGE_DOES_NOT_EXIST" ->
                        JD.succeed NoSuchEntityErrorCode_RULES_PACKAGE_DOES_NOT_EXIST

                    "SNS_TOPIC_DOES_NOT_EXIST" ->
                        JD.succeed NoSuchEntityErrorCode_SNS_TOPIC_DOES_NOT_EXIST

                    "IAM_ROLE_DOES_NOT_EXIST" ->
                        JD.succeed NoSuchEntityErrorCode_IAM_ROLE_DOES_NOT_EXIST


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The request was rejected because it referenced an entity that does not exist. The error code describes the entity.</p>
-}
type alias NoSuchEntityException =
    { message : String
    , errorCode : NoSuchEntityErrorCode
    , canRetry : Bool
    }



noSuchEntityExceptionDecoder : JD.Decoder NoSuchEntityException
noSuchEntityExceptionDecoder =
    JDP.decode NoSuchEntityException
        |> JDP.required "message" JD.string
        |> JDP.required "errorCode" noSuchEntityErrorCodeDecoder
        |> JDP.required "canRetry" JD.bool




{-| Type of HTTP response from previewAgents
-}
type alias PreviewAgentsResponse =
    { agentPreviews : (List AgentPreview)
    , nextToken : Maybe String
    }



previewAgentsResponseDecoder : JD.Decoder PreviewAgentsResponse
previewAgentsResponseDecoder =
    JDP.decode PreviewAgentsResponse
        |> JDP.required "agentPreviews" (JD.list agentPreviewDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from removeAttributesFromFindings
-}
type alias RemoveAttributesFromFindingsResponse =
    { failedItems : (Dict String FailedItemDetails)
    }



removeAttributesFromFindingsResponseDecoder : JD.Decoder RemoveAttributesFromFindingsResponse
removeAttributesFromFindingsResponseDecoder =
    JDP.decode RemoveAttributesFromFindingsResponse
        |> JDP.required "failedItems" (JD.dict failedItemDetailsDecoder)




{-| <p>Contains information about a resource group. The resource group defines a set of tags that, when queried, identify the AWS resources that make up the assessment target. This data type is used as the response element in the <a>DescribeResourceGroups</a> action.</p>
-}
type alias ResourceGroup =
    { arn : String
    , tags : (List ResourceGroupTag)
    , createdAt : Date
    }



resourceGroupDecoder : JD.Decoder ResourceGroup
resourceGroupDecoder =
    JDP.decode ResourceGroup
        |> JDP.required "arn" JD.string
        |> JDP.required "tags" (JD.list resourceGroupTagDecoder)
        |> JDP.required "createdAt" JDX.date




{-| <p>This data type is used as one of the elements of the <a>ResourceGroup</a> data type.</p>
-}
type alias ResourceGroupTag =
    { key : String
    , value : Maybe String
    }



resourceGroupTagDecoder : JD.Decoder ResourceGroupTag
resourceGroupTagDecoder =
    JDP.decode ResourceGroupTag
        |> JDP.required "key" JD.string
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>Contains information about an Amazon Inspector rules package. This data type is used as the response element in the <a>DescribeRulesPackages</a> action.</p>
-}
type alias RulesPackage =
    { arn : String
    , name : String
    , version : String
    , provider : String
    , description : Maybe String
    }



rulesPackageDecoder : JD.Decoder RulesPackage
rulesPackageDecoder =
    JDP.decode RulesPackage
        |> JDP.required "arn" JD.string
        |> JDP.required "name" JD.string
        |> JDP.required "version" JD.string
        |> JDP.required "provider" JD.string
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| One of

* `Severity_Low`
* `Severity_Medium`
* `Severity_High`
* `Severity_Informational`
* `Severity_Undefined`

-}
type Severity
    = Severity_Low
    | Severity_Medium
    | Severity_High
    | Severity_Informational
    | Severity_Undefined



severityDecoder : JD.Decoder Severity
severityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Low" ->
                        JD.succeed Severity_Low

                    "Medium" ->
                        JD.succeed Severity_Medium

                    "High" ->
                        JD.succeed Severity_High

                    "Informational" ->
                        JD.succeed Severity_Informational

                    "Undefined" ->
                        JD.succeed Severity_Undefined


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from startAssessmentRun
-}
type alias StartAssessmentRunResponse =
    { assessmentRunArn : String
    }



startAssessmentRunResponseDecoder : JD.Decoder StartAssessmentRunResponse
startAssessmentRunResponseDecoder =
    JDP.decode StartAssessmentRunResponse
        |> JDP.required "assessmentRunArn" JD.string




{-| <p>This data type is used as a response element in the <a>ListEventSubscriptions</a> action.</p>
-}
type alias Subscription =
    { resourceArn : String
    , topicArn : String
    , eventSubscriptions : (List EventSubscription)
    }



subscriptionDecoder : JD.Decoder Subscription
subscriptionDecoder =
    JDP.decode Subscription
        |> JDP.required "resourceArn" JD.string
        |> JDP.required "topicArn" JD.string
        |> JDP.required "eventSubscriptions" (JD.list eventSubscriptionDecoder)




{-| <p>A key and value pair. This data type is used as a request parameter in the <a>SetTagsForResource</a> action and a response element in the <a>ListTagsForResource</a> action.</p>
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




{-| <p>The metadata about the Amazon Inspector application data metrics collected by the agent. This data type is used as the response element in the <a>GetTelemetryMetadata</a> action.</p>
-}
type alias TelemetryMetadata =
    { messageType : String
    , count : Int
    , dataSize : Maybe Int
    }



telemetryMetadataDecoder : JD.Decoder TelemetryMetadata
telemetryMetadataDecoder =
    JDP.decode TelemetryMetadata
        |> JDP.required "messageType" JD.string
        |> JDP.required "count" JD.int
        |> JDP.optional "dataSize" (JD.nullable JD.int) Nothing




{-| <p>This data type is used in the <a>AssessmentRunFilter</a> data type.</p>
-}
type alias TimestampRange =
    { beginDate : Maybe Date
    , endDate : Maybe Date
    }



timestampRangeDecoder : JD.Decoder TimestampRange
timestampRangeDecoder =
    JDP.decode TimestampRange
        |> JDP.optional "beginDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endDate" (JD.nullable JDX.date) Nothing




