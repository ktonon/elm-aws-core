module AWS.Services.CloudSearch
    exposing
        ( config
        , buildSuggesters
        , createDomain
        , defineAnalysisScheme
        , defineExpression
        , defineIndexField
        , defineSuggester
        , deleteAnalysisScheme
        , deleteDomain
        , deleteExpression
        , deleteIndexField
        , deleteSuggester
        , describeAnalysisSchemes
        , DescribeAnalysisSchemesOptions
        , describeAvailabilityOptions
        , DescribeAvailabilityOptionsOptions
        , describeDomains
        , DescribeDomainsOptions
        , describeExpressions
        , DescribeExpressionsOptions
        , describeIndexFields
        , DescribeIndexFieldsOptions
        , describeScalingParameters
        , describeServiceAccessPolicies
        , DescribeServiceAccessPoliciesOptions
        , describeSuggesters
        , DescribeSuggestersOptions
        , indexDocuments
        , listDomainNames
        , updateAvailabilityOptions
        , updateScalingParameters
        , updateServiceAccessPolicies
        , AccessPoliciesStatus
        , AlgorithmicStemming(..)
        , AnalysisOptions
        , AnalysisScheme
        , AnalysisSchemeLanguage(..)
        , AnalysisSchemeStatus
        , AvailabilityOptionsStatus
        , BaseException
        , BuildSuggestersResponse
        , CreateDomainResponse
        , DateArrayOptions
        , DateOptions
        , DefineAnalysisSchemeResponse
        , DefineExpressionResponse
        , DefineIndexFieldResponse
        , DefineSuggesterResponse
        , DeleteAnalysisSchemeResponse
        , DeleteDomainResponse
        , DeleteExpressionResponse
        , DeleteIndexFieldResponse
        , DeleteSuggesterResponse
        , DescribeAnalysisSchemesResponse
        , DescribeAvailabilityOptionsResponse
        , DescribeDomainsResponse
        , DescribeExpressionsResponse
        , DescribeIndexFieldsResponse
        , DescribeScalingParametersResponse
        , DescribeServiceAccessPoliciesResponse
        , DescribeSuggestersResponse
        , DisabledOperationException
        , DocumentSuggesterOptions
        , DomainStatus
        , DoubleArrayOptions
        , DoubleOptions
        , Expression
        , ExpressionStatus
        , IndexDocumentsResponse
        , IndexField
        , IndexFieldStatus
        , IndexFieldType(..)
        , IntArrayOptions
        , IntOptions
        , InternalException
        , InvalidTypeException
        , LatLonOptions
        , LimitExceededException
        , Limits
        , ListDomainNamesResponse
        , LiteralArrayOptions
        , LiteralOptions
        , OptionState(..)
        , OptionStatus
        , PartitionInstanceType(..)
        , ResourceNotFoundException
        , ScalingParameters
        , ScalingParametersStatus
        , ServiceEndpoint
        , Suggester
        , SuggesterFuzzyMatching(..)
        , SuggesterStatus
        , TextArrayOptions
        , TextOptions
        , UpdateAvailabilityOptionsResponse
        , UpdateScalingParametersResponse
        , UpdateServiceAccessPoliciesResponse
        )

{-| <fullname>Amazon CloudSearch Configuration Service</fullname> <p>You use the Amazon CloudSearch configuration service to create, configure, and manage search domains. Configuration service requests are submitted using the AWS Query protocol. AWS Query requests are HTTP or HTTPS requests submitted via HTTP GET or POST with a query parameter named Action.</p> <p>The endpoint for configuration service requests is region-specific: cloudsearch.<i>region</i>.amazonaws.com. For example, cloudsearch.us-east-1.amazonaws.com. For a current list of supported regions and endpoints, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#cloudsearch_region" target="_blank">Regions and Endpoints</a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [buildSuggesters](#buildSuggesters)
* [createDomain](#createDomain)
* [defineAnalysisScheme](#defineAnalysisScheme)
* [defineExpression](#defineExpression)
* [defineIndexField](#defineIndexField)
* [defineSuggester](#defineSuggester)
* [deleteAnalysisScheme](#deleteAnalysisScheme)
* [deleteDomain](#deleteDomain)
* [deleteExpression](#deleteExpression)
* [deleteIndexField](#deleteIndexField)
* [deleteSuggester](#deleteSuggester)
* [describeAnalysisSchemes](#describeAnalysisSchemes)
* [DescribeAnalysisSchemesOptions](#DescribeAnalysisSchemesOptions)
* [describeAvailabilityOptions](#describeAvailabilityOptions)
* [DescribeAvailabilityOptionsOptions](#DescribeAvailabilityOptionsOptions)
* [describeDomains](#describeDomains)
* [DescribeDomainsOptions](#DescribeDomainsOptions)
* [describeExpressions](#describeExpressions)
* [DescribeExpressionsOptions](#DescribeExpressionsOptions)
* [describeIndexFields](#describeIndexFields)
* [DescribeIndexFieldsOptions](#DescribeIndexFieldsOptions)
* [describeScalingParameters](#describeScalingParameters)
* [describeServiceAccessPolicies](#describeServiceAccessPolicies)
* [DescribeServiceAccessPoliciesOptions](#DescribeServiceAccessPoliciesOptions)
* [describeSuggesters](#describeSuggesters)
* [DescribeSuggestersOptions](#DescribeSuggestersOptions)
* [indexDocuments](#indexDocuments)
* [listDomainNames](#listDomainNames)
* [updateAvailabilityOptions](#updateAvailabilityOptions)
* [updateScalingParameters](#updateScalingParameters)
* [updateServiceAccessPolicies](#updateServiceAccessPolicies)


@docs buildSuggesters,createDomain,defineAnalysisScheme,defineExpression,defineIndexField,defineSuggester,deleteAnalysisScheme,deleteDomain,deleteExpression,deleteIndexField,deleteSuggester,describeAnalysisSchemes,DescribeAnalysisSchemesOptions,describeAvailabilityOptions,DescribeAvailabilityOptionsOptions,describeDomains,DescribeDomainsOptions,describeExpressions,DescribeExpressionsOptions,describeIndexFields,DescribeIndexFieldsOptions,describeScalingParameters,describeServiceAccessPolicies,DescribeServiceAccessPoliciesOptions,describeSuggesters,DescribeSuggestersOptions,indexDocuments,listDomainNames,updateAvailabilityOptions,updateScalingParameters,updateServiceAccessPolicies

## Responses

* [BuildSuggestersResponse](#BuildSuggestersResponse)
* [CreateDomainResponse](#CreateDomainResponse)
* [DefineAnalysisSchemeResponse](#DefineAnalysisSchemeResponse)
* [DefineExpressionResponse](#DefineExpressionResponse)
* [DefineIndexFieldResponse](#DefineIndexFieldResponse)
* [DefineSuggesterResponse](#DefineSuggesterResponse)
* [DeleteAnalysisSchemeResponse](#DeleteAnalysisSchemeResponse)
* [DeleteDomainResponse](#DeleteDomainResponse)
* [DeleteExpressionResponse](#DeleteExpressionResponse)
* [DeleteIndexFieldResponse](#DeleteIndexFieldResponse)
* [DeleteSuggesterResponse](#DeleteSuggesterResponse)
* [DescribeAnalysisSchemesResponse](#DescribeAnalysisSchemesResponse)
* [DescribeAvailabilityOptionsResponse](#DescribeAvailabilityOptionsResponse)
* [DescribeDomainsResponse](#DescribeDomainsResponse)
* [DescribeExpressionsResponse](#DescribeExpressionsResponse)
* [DescribeIndexFieldsResponse](#DescribeIndexFieldsResponse)
* [DescribeScalingParametersResponse](#DescribeScalingParametersResponse)
* [DescribeServiceAccessPoliciesResponse](#DescribeServiceAccessPoliciesResponse)
* [DescribeSuggestersResponse](#DescribeSuggestersResponse)
* [IndexDocumentsResponse](#IndexDocumentsResponse)
* [ListDomainNamesResponse](#ListDomainNamesResponse)
* [UpdateAvailabilityOptionsResponse](#UpdateAvailabilityOptionsResponse)
* [UpdateScalingParametersResponse](#UpdateScalingParametersResponse)
* [UpdateServiceAccessPoliciesResponse](#UpdateServiceAccessPoliciesResponse)


@docs BuildSuggestersResponse,CreateDomainResponse,DefineAnalysisSchemeResponse,DefineExpressionResponse,DefineIndexFieldResponse,DefineSuggesterResponse,DeleteAnalysisSchemeResponse,DeleteDomainResponse,DeleteExpressionResponse,DeleteIndexFieldResponse,DeleteSuggesterResponse,DescribeAnalysisSchemesResponse,DescribeAvailabilityOptionsResponse,DescribeDomainsResponse,DescribeExpressionsResponse,DescribeIndexFieldsResponse,DescribeScalingParametersResponse,DescribeServiceAccessPoliciesResponse,DescribeSuggestersResponse,IndexDocumentsResponse,ListDomainNamesResponse,UpdateAvailabilityOptionsResponse,UpdateScalingParametersResponse,UpdateServiceAccessPoliciesResponse

## Records

* [AccessPoliciesStatus](#AccessPoliciesStatus)
* [AnalysisOptions](#AnalysisOptions)
* [AnalysisScheme](#AnalysisScheme)
* [AnalysisSchemeStatus](#AnalysisSchemeStatus)
* [AvailabilityOptionsStatus](#AvailabilityOptionsStatus)
* [DateArrayOptions](#DateArrayOptions)
* [DateOptions](#DateOptions)
* [DocumentSuggesterOptions](#DocumentSuggesterOptions)
* [DomainStatus](#DomainStatus)
* [DoubleArrayOptions](#DoubleArrayOptions)
* [DoubleOptions](#DoubleOptions)
* [Expression](#Expression)
* [ExpressionStatus](#ExpressionStatus)
* [IndexField](#IndexField)
* [IndexFieldStatus](#IndexFieldStatus)
* [IntArrayOptions](#IntArrayOptions)
* [IntOptions](#IntOptions)
* [LatLonOptions](#LatLonOptions)
* [Limits](#Limits)
* [LiteralArrayOptions](#LiteralArrayOptions)
* [LiteralOptions](#LiteralOptions)
* [OptionStatus](#OptionStatus)
* [ScalingParameters](#ScalingParameters)
* [ScalingParametersStatus](#ScalingParametersStatus)
* [ServiceEndpoint](#ServiceEndpoint)
* [Suggester](#Suggester)
* [SuggesterStatus](#SuggesterStatus)
* [TextArrayOptions](#TextArrayOptions)
* [TextOptions](#TextOptions)


@docs AccessPoliciesStatus,AnalysisOptions,AnalysisScheme,AnalysisSchemeStatus,AvailabilityOptionsStatus,DateArrayOptions,DateOptions,DocumentSuggesterOptions,DomainStatus,DoubleArrayOptions,DoubleOptions,Expression,ExpressionStatus,IndexField,IndexFieldStatus,IntArrayOptions,IntOptions,LatLonOptions,Limits,LiteralArrayOptions,LiteralOptions,OptionStatus,ScalingParameters,ScalingParametersStatus,ServiceEndpoint,Suggester,SuggesterStatus,TextArrayOptions,TextOptions

## Unions

* [AlgorithmicStemming](#AlgorithmicStemming)
* [AnalysisSchemeLanguage](#AnalysisSchemeLanguage)
* [IndexFieldType](#IndexFieldType)
* [OptionState](#OptionState)
* [PartitionInstanceType](#PartitionInstanceType)
* [SuggesterFuzzyMatching](#SuggesterFuzzyMatching)


@docs AlgorithmicStemming,AnalysisSchemeLanguage,IndexFieldType,OptionState,PartitionInstanceType,SuggesterFuzzyMatching

## Exceptions

* [BaseException](#BaseException)
* [DisabledOperationException](#DisabledOperationException)
* [InternalException](#InternalException)
* [InvalidTypeException](#InvalidTypeException)
* [LimitExceededException](#LimitExceededException)
* [ResourceNotFoundException](#ResourceNotFoundException)


@docs BaseException,DisabledOperationException,InternalException,InvalidTypeException,LimitExceededException,ResourceNotFoundException

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
        "cloudsearch"
        "2013-01-01"
        "undefined"
        "AWSCLOUDSEARCH_20130101."
        "cloudsearch.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Indexes the search suggestions. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html#configuring-suggesters">Configuring Suggesters</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
buildSuggesters :
    String
    -> AWS.Request BuildSuggestersResponse
buildSuggesters domainName =
    AWS.Http.unsignedRequest
        "BuildSuggesters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        buildSuggestersResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new search domain. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/creating-domains.html" target="_blank">Creating a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
createDomain :
    String
    -> AWS.Request CreateDomainResponse
createDomain domainName =
    AWS.Http.unsignedRequest
        "CreateDomain"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDomainResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Configures an analysis scheme that can be applied to a <code>text</code> or <code>text-array</code> field to define language-specific text processing options. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html" target="_blank">Configuring Analysis Schemes</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `analysisScheme` __:__ `AnalysisScheme`


-}
defineAnalysisScheme :
    String
    -> AnalysisScheme
    -> AWS.Request DefineAnalysisSchemeResponse
defineAnalysisScheme domainName analysisScheme =
    AWS.Http.unsignedRequest
        "DefineAnalysisScheme"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        defineAnalysisSchemeResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Configures an <code><a>Expression</a></code> for the search domain. Used to create new expressions and modify existing ones. If the expression exists, the new configuration replaces the old one. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html" target="_blank">Configuring Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `expression` __:__ `Expression`


-}
defineExpression :
    String
    -> Expression
    -> AWS.Request DefineExpressionResponse
defineExpression domainName expression =
    AWS.Http.unsignedRequest
        "DefineExpression"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        defineExpressionResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Configures an <code><a>IndexField</a></code> for the search domain. Used to create new fields and modify existing ones. You must specify the name of the domain you are configuring and an index field configuration. The index field configuration specifies a unique name, the index field type, and the options you want to configure for the field. The options you can specify depend on the <code><a>IndexFieldType</a></code>. If the field exists, the new configuration replaces the old one. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html" target="_blank">Configuring Index Fields</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>

__Required Parameters__

* `domainName` __:__ `String`
* `indexField` __:__ `IndexField`


-}
defineIndexField :
    String
    -> IndexField
    -> AWS.Request DefineIndexFieldResponse
defineIndexField domainName indexField =
    AWS.Http.unsignedRequest
        "DefineIndexField"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        defineIndexFieldResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Configures a suggester for a domain. A suggester enables you to display possible matches before users finish typing their queries. When you configure a suggester, you must specify the name of the text field you want to search for possible matches and a unique name for the suggester. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html" target="_blank">Getting Search Suggestions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `suggester` __:__ `Suggester`


-}
defineSuggester :
    String
    -> Suggester
    -> AWS.Request DefineSuggesterResponse
defineSuggester domainName suggester =
    AWS.Http.unsignedRequest
        "DefineSuggester"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        defineSuggesterResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes an analysis scheme. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html" target="_blank">Configuring Analysis Schemes</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>

__Required Parameters__

* `domainName` __:__ `String`
* `analysisSchemeName` __:__ `String`


-}
deleteAnalysisScheme :
    String
    -> String
    -> AWS.Request DeleteAnalysisSchemeResponse
deleteAnalysisScheme domainName analysisSchemeName =
    AWS.Http.unsignedRequest
        "DeleteAnalysisScheme"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteAnalysisSchemeResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Permanently deletes a search domain and all of its data. Once a domain has been deleted, it cannot be recovered. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/deleting-domains.html" target="_blank">Deleting a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>

__Required Parameters__

* `domainName` __:__ `String`


-}
deleteDomain :
    String
    -> AWS.Request DeleteDomainResponse
deleteDomain domainName =
    AWS.Http.unsignedRequest
        "DeleteDomain"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteDomainResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Removes an <code><a>Expression</a></code> from the search domain. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html" target="_blank">Configuring Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `expressionName` __:__ `String`


-}
deleteExpression :
    String
    -> String
    -> AWS.Request DeleteExpressionResponse
deleteExpression domainName expressionName =
    AWS.Http.unsignedRequest
        "DeleteExpression"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteExpressionResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Removes an <code><a>IndexField</a></code> from the search domain. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html" target="_blank">Configuring Index Fields</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `indexFieldName` __:__ `String`


-}
deleteIndexField :
    String
    -> String
    -> AWS.Request DeleteIndexFieldResponse
deleteIndexField domainName indexFieldName =
    AWS.Http.unsignedRequest
        "DeleteIndexField"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteIndexFieldResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes a suggester. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html" target="_blank">Getting Search Suggestions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `suggesterName` __:__ `String`


-}
deleteSuggester :
    String
    -> String
    -> AWS.Request DeleteSuggesterResponse
deleteSuggester domainName suggesterName =
    AWS.Http.unsignedRequest
        "DeleteSuggester"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteSuggesterResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets the analysis schemes configured for a domain. An analysis scheme defines language-specific text processing options for a <code>text</code> field. Can be limited to specific analysis schemes by name. By default, shows all analysis schemes and includes any pending changes to the configuration. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html" target="_blank">Configuring Analysis Schemes</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
describeAnalysisSchemes :
    String
    -> (DescribeAnalysisSchemesOptions -> DescribeAnalysisSchemesOptions)
    -> AWS.Request DescribeAnalysisSchemesResponse
describeAnalysisSchemes domainName setOptions =
  let
    options = setOptions (DescribeAnalysisSchemesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAnalysisSchemes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAnalysisSchemesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeAnalysisSchemes request
-}
type alias DescribeAnalysisSchemesOptions =
    { analysisSchemeNames : Maybe (List String)
    , deployed : Maybe Bool
    }



{-| <p>Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html" target="_blank">Configuring Availability Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
describeAvailabilityOptions :
    String
    -> (DescribeAvailabilityOptionsOptions -> DescribeAvailabilityOptionsOptions)
    -> AWS.Request DescribeAvailabilityOptionsResponse
describeAvailabilityOptions domainName setOptions =
  let
    options = setOptions (DescribeAvailabilityOptionsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAvailabilityOptions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAvailabilityOptionsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeAvailabilityOptions request
-}
type alias DescribeAvailabilityOptionsOptions =
    { deployed : Maybe Bool
    }



{-| <p>Gets information about the search domains owned by this account. Can be limited to specific domains. Shows all domains by default. To get the number of searchable documents in a domain, use the console or submit a <code>matchall</code> request to your domain's search endpoint: <code>q=matchall&amp;amp;q.parser=structured&amp;amp;size=0</code>. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html" target="_blank">Getting Information about a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__



-}
describeDomains :
    (DescribeDomainsOptions -> DescribeDomainsOptions)
    -> AWS.Request DescribeDomainsResponse
describeDomains setOptions =
  let
    options = setOptions (DescribeDomainsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDomains"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeDomainsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeDomains request
-}
type alias DescribeDomainsOptions =
    { domainNames : Maybe (List String)
    }



{-| <p>Gets the expressions configured for the search domain. Can be limited to specific expressions by name. By default, shows all expressions and includes any pending changes to the configuration. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html" target="_blank">Configuring Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
describeExpressions :
    String
    -> (DescribeExpressionsOptions -> DescribeExpressionsOptions)
    -> AWS.Request DescribeExpressionsResponse
describeExpressions domainName setOptions =
  let
    options = setOptions (DescribeExpressionsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeExpressions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeExpressionsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeExpressions request
-}
type alias DescribeExpressionsOptions =
    { expressionNames : Maybe (List String)
    , deployed : Maybe Bool
    }



{-| <p>Gets information about the index fields configured for the search domain. Can be limited to specific fields by name. By default, shows all fields and includes any pending changes to the configuration. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html" target="_blank">Getting Domain Information</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
describeIndexFields :
    String
    -> (DescribeIndexFieldsOptions -> DescribeIndexFieldsOptions)
    -> AWS.Request DescribeIndexFieldsResponse
describeIndexFields domainName setOptions =
  let
    options = setOptions (DescribeIndexFieldsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeIndexFields"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeIndexFieldsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeIndexFields request
-}
type alias DescribeIndexFieldsOptions =
    { fieldNames : Maybe (List String)
    , deployed : Maybe Bool
    }



{-| <p>Gets the scaling parameters configured for a domain. A domain's scaling parameters specify the desired search instance type and replication count. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html" target="_blank">Configuring Scaling Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
describeScalingParameters :
    String
    -> AWS.Request DescribeScalingParametersResponse
describeScalingParameters domainName =
    AWS.Http.unsignedRequest
        "DescribeScalingParameters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeScalingParametersResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about the access policies that control access to the domain's document and search endpoints. By default, shows the configuration with any pending changes. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html" target="_blank">Configuring Access for a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
describeServiceAccessPolicies :
    String
    -> (DescribeServiceAccessPoliciesOptions -> DescribeServiceAccessPoliciesOptions)
    -> AWS.Request DescribeServiceAccessPoliciesResponse
describeServiceAccessPolicies domainName setOptions =
  let
    options = setOptions (DescribeServiceAccessPoliciesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeServiceAccessPolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeServiceAccessPoliciesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeServiceAccessPolicies request
-}
type alias DescribeServiceAccessPoliciesOptions =
    { deployed : Maybe Bool
    }



{-| <p>Gets the suggesters configured for a domain. A suggester enables you to display possible matches before users finish typing their queries. Can be limited to specific suggesters by name. By default, shows all suggesters and includes any pending changes to the configuration. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html" target="_blank">Getting Search Suggestions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
describeSuggesters :
    String
    -> (DescribeSuggestersOptions -> DescribeSuggestersOptions)
    -> AWS.Request DescribeSuggestersResponse
describeSuggesters domainName setOptions =
  let
    options = setOptions (DescribeSuggestersOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSuggesters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSuggestersResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSuggesters request
-}
type alias DescribeSuggestersOptions =
    { suggesterNames : Maybe (List String)
    , deployed : Maybe Bool
    }



{-| <p>Tells the search domain to start indexing its documents using the latest indexing options. This operation must be invoked to activate options whose <a>OptionStatus</a> is <code>RequiresIndexDocuments</code>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
indexDocuments :
    String
    -> AWS.Request IndexDocumentsResponse
indexDocuments domainName =
    AWS.Http.unsignedRequest
        "IndexDocuments"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        indexDocumentsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Lists all search domains owned by an account.</p>

__Required Parameters__



-}
listDomainNames :
    AWS.Request ListDomainNamesResponse
listDomainNames =
    AWS.Http.unsignedRequest
        "ListDomainNames"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listDomainNamesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html" target="_blank">Configuring Availability Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `multiAZ` __:__ `Bool`


-}
updateAvailabilityOptions :
    String
    -> Bool
    -> AWS.Request UpdateAvailabilityOptionsResponse
updateAvailabilityOptions domainName multiAZ =
    AWS.Http.unsignedRequest
        "UpdateAvailabilityOptions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateAvailabilityOptionsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Configures scaling parameters for a domain. A domain's scaling parameters specify the desired search instance type and replication count. Amazon CloudSearch will still automatically scale your domain based on the volume of data and traffic, but not below the desired instance type and replication count. If the Multi-AZ option is enabled, these values control the resources used per Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html" target="_blank">Configuring Scaling Options</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>

__Required Parameters__

* `domainName` __:__ `String`
* `scalingParameters` __:__ `ScalingParameters`


-}
updateScalingParameters :
    String
    -> ScalingParameters
    -> AWS.Request UpdateScalingParametersResponse
updateScalingParameters domainName scalingParameters =
    AWS.Http.unsignedRequest
        "UpdateScalingParameters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateScalingParametersResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Configures the access rules that control access to the domain's document and search endpoints. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html" target="_blank"> Configuring Access for an Amazon CloudSearch Domain</a>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `accessPolicies` __:__ `String`


-}
updateServiceAccessPolicies :
    String
    -> String
    -> AWS.Request UpdateServiceAccessPoliciesResponse
updateServiceAccessPolicies domainName accessPolicies =
    AWS.Http.unsignedRequest
        "UpdateServiceAccessPolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateServiceAccessPoliciesResponseDecoder
        |> AWS.UnsignedRequest




{-| <p>The configured access rules for the domain's document and search endpoints, and the current status of those rules.</p>
-}
type alias AccessPoliciesStatus =
    { options : String
    , status : OptionStatus
    }



accessPoliciesStatusDecoder : JD.Decoder AccessPoliciesStatus
accessPoliciesStatusDecoder =
    JDP.decode AccessPoliciesStatus
        |> JDP.required "options" JD.string
        |> JDP.required "status" optionStatusDecoder




{-| One of

* `AlgorithmicStemming_none`
* `AlgorithmicStemming_minimal`
* `AlgorithmicStemming_light`
* `AlgorithmicStemming_full`

-}
type AlgorithmicStemming
    = AlgorithmicStemming_none
    | AlgorithmicStemming_minimal
    | AlgorithmicStemming_light
    | AlgorithmicStemming_full



algorithmicStemmingDecoder : JD.Decoder AlgorithmicStemming
algorithmicStemmingDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "none" ->
                        JD.succeed AlgorithmicStemming_none

                    "minimal" ->
                        JD.succeed AlgorithmicStemming_minimal

                    "light" ->
                        JD.succeed AlgorithmicStemming_light

                    "full" ->
                        JD.succeed AlgorithmicStemming_full


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Synonyms, stopwords, and stemming options for an analysis scheme. Includes tokenization dictionary for Japanese.</p>
-}
type alias AnalysisOptions =
    { synonyms : Maybe String
    , stopwords : Maybe String
    , stemmingDictionary : Maybe String
    , japaneseTokenizationDictionary : Maybe String
    , algorithmicStemming : Maybe AlgorithmicStemming
    }



analysisOptionsDecoder : JD.Decoder AnalysisOptions
analysisOptionsDecoder =
    JDP.decode AnalysisOptions
        |> JDP.optional "synonyms" (JD.nullable JD.string) Nothing
        |> JDP.optional "stopwords" (JD.nullable JD.string) Nothing
        |> JDP.optional "stemmingDictionary" (JD.nullable JD.string) Nothing
        |> JDP.optional "japaneseTokenizationDictionary" (JD.nullable JD.string) Nothing
        |> JDP.optional "algorithmicStemming" (JD.nullable algorithmicStemmingDecoder) Nothing




{-| <p>Configuration information for an analysis scheme. Each analysis scheme has a unique name and specifies the language of the text to be processed. The following options can be configured for an analysis scheme: <code>Synonyms</code>, <code>Stopwords</code>, <code>StemmingDictionary</code>, <code>JapaneseTokenizationDictionary</code> and <code>AlgorithmicStemming</code>.</p>
-}
type alias AnalysisScheme =
    { analysisSchemeName : String
    , analysisSchemeLanguage : AnalysisSchemeLanguage
    , analysisOptions : Maybe AnalysisOptions
    }



analysisSchemeDecoder : JD.Decoder AnalysisScheme
analysisSchemeDecoder =
    JDP.decode AnalysisScheme
        |> JDP.required "analysisSchemeName" JD.string
        |> JDP.required "analysisSchemeLanguage" analysisSchemeLanguageDecoder
        |> JDP.optional "analysisOptions" (JD.nullable analysisOptionsDecoder) Nothing




{-| One of

* `AnalysisSchemeLanguage_ar`
* `AnalysisSchemeLanguage_bg`
* `AnalysisSchemeLanguage_ca`
* `AnalysisSchemeLanguage_cs`
* `AnalysisSchemeLanguage_da`
* `AnalysisSchemeLanguage_de`
* `AnalysisSchemeLanguage_el`
* `AnalysisSchemeLanguage_en`
* `AnalysisSchemeLanguage_es`
* `AnalysisSchemeLanguage_eu`
* `AnalysisSchemeLanguage_fa`
* `AnalysisSchemeLanguage_fi`
* `AnalysisSchemeLanguage_fr`
* `AnalysisSchemeLanguage_ga`
* `AnalysisSchemeLanguage_gl`
* `AnalysisSchemeLanguage_he`
* `AnalysisSchemeLanguage_hi`
* `AnalysisSchemeLanguage_hu`
* `AnalysisSchemeLanguage_hy`
* `AnalysisSchemeLanguage_id`
* `AnalysisSchemeLanguage_it`
* `AnalysisSchemeLanguage_ja`
* `AnalysisSchemeLanguage_ko`
* `AnalysisSchemeLanguage_lv`
* `AnalysisSchemeLanguage_mul`
* `AnalysisSchemeLanguage_nl`
* `AnalysisSchemeLanguage_no`
* `AnalysisSchemeLanguage_pt`
* `AnalysisSchemeLanguage_ro`
* `AnalysisSchemeLanguage_ru`
* `AnalysisSchemeLanguage_sv`
* `AnalysisSchemeLanguage_th`
* `AnalysisSchemeLanguage_tr`
* `AnalysisSchemeLanguage_zh-Hans`
* `AnalysisSchemeLanguage_zh-Hant`

-}
type AnalysisSchemeLanguage
    = AnalysisSchemeLanguage_ar
    | AnalysisSchemeLanguage_bg
    | AnalysisSchemeLanguage_ca
    | AnalysisSchemeLanguage_cs
    | AnalysisSchemeLanguage_da
    | AnalysisSchemeLanguage_de
    | AnalysisSchemeLanguage_el
    | AnalysisSchemeLanguage_en
    | AnalysisSchemeLanguage_es
    | AnalysisSchemeLanguage_eu
    | AnalysisSchemeLanguage_fa
    | AnalysisSchemeLanguage_fi
    | AnalysisSchemeLanguage_fr
    | AnalysisSchemeLanguage_ga
    | AnalysisSchemeLanguage_gl
    | AnalysisSchemeLanguage_he
    | AnalysisSchemeLanguage_hi
    | AnalysisSchemeLanguage_hu
    | AnalysisSchemeLanguage_hy
    | AnalysisSchemeLanguage_id
    | AnalysisSchemeLanguage_it
    | AnalysisSchemeLanguage_ja
    | AnalysisSchemeLanguage_ko
    | AnalysisSchemeLanguage_lv
    | AnalysisSchemeLanguage_mul
    | AnalysisSchemeLanguage_nl
    | AnalysisSchemeLanguage_no
    | AnalysisSchemeLanguage_pt
    | AnalysisSchemeLanguage_ro
    | AnalysisSchemeLanguage_ru
    | AnalysisSchemeLanguage_sv
    | AnalysisSchemeLanguage_th
    | AnalysisSchemeLanguage_tr
    | AnalysisSchemeLanguage_zh_Hans
    | AnalysisSchemeLanguage_zh_Hant



analysisSchemeLanguageDecoder : JD.Decoder AnalysisSchemeLanguage
analysisSchemeLanguageDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ar" ->
                        JD.succeed AnalysisSchemeLanguage_ar

                    "bg" ->
                        JD.succeed AnalysisSchemeLanguage_bg

                    "ca" ->
                        JD.succeed AnalysisSchemeLanguage_ca

                    "cs" ->
                        JD.succeed AnalysisSchemeLanguage_cs

                    "da" ->
                        JD.succeed AnalysisSchemeLanguage_da

                    "de" ->
                        JD.succeed AnalysisSchemeLanguage_de

                    "el" ->
                        JD.succeed AnalysisSchemeLanguage_el

                    "en" ->
                        JD.succeed AnalysisSchemeLanguage_en

                    "es" ->
                        JD.succeed AnalysisSchemeLanguage_es

                    "eu" ->
                        JD.succeed AnalysisSchemeLanguage_eu

                    "fa" ->
                        JD.succeed AnalysisSchemeLanguage_fa

                    "fi" ->
                        JD.succeed AnalysisSchemeLanguage_fi

                    "fr" ->
                        JD.succeed AnalysisSchemeLanguage_fr

                    "ga" ->
                        JD.succeed AnalysisSchemeLanguage_ga

                    "gl" ->
                        JD.succeed AnalysisSchemeLanguage_gl

                    "he" ->
                        JD.succeed AnalysisSchemeLanguage_he

                    "hi" ->
                        JD.succeed AnalysisSchemeLanguage_hi

                    "hu" ->
                        JD.succeed AnalysisSchemeLanguage_hu

                    "hy" ->
                        JD.succeed AnalysisSchemeLanguage_hy

                    "id" ->
                        JD.succeed AnalysisSchemeLanguage_id

                    "it" ->
                        JD.succeed AnalysisSchemeLanguage_it

                    "ja" ->
                        JD.succeed AnalysisSchemeLanguage_ja

                    "ko" ->
                        JD.succeed AnalysisSchemeLanguage_ko

                    "lv" ->
                        JD.succeed AnalysisSchemeLanguage_lv

                    "mul" ->
                        JD.succeed AnalysisSchemeLanguage_mul

                    "nl" ->
                        JD.succeed AnalysisSchemeLanguage_nl

                    "no" ->
                        JD.succeed AnalysisSchemeLanguage_no

                    "pt" ->
                        JD.succeed AnalysisSchemeLanguage_pt

                    "ro" ->
                        JD.succeed AnalysisSchemeLanguage_ro

                    "ru" ->
                        JD.succeed AnalysisSchemeLanguage_ru

                    "sv" ->
                        JD.succeed AnalysisSchemeLanguage_sv

                    "th" ->
                        JD.succeed AnalysisSchemeLanguage_th

                    "tr" ->
                        JD.succeed AnalysisSchemeLanguage_tr

                    "zh_Hans" ->
                        JD.succeed AnalysisSchemeLanguage_zh_Hans

                    "zh_Hant" ->
                        JD.succeed AnalysisSchemeLanguage_zh_Hant


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The status and configuration of an <code>AnalysisScheme</code>.</p>
-}
type alias AnalysisSchemeStatus =
    { options : AnalysisScheme
    , status : OptionStatus
    }



analysisSchemeStatusDecoder : JD.Decoder AnalysisSchemeStatus
analysisSchemeStatusDecoder =
    JDP.decode AnalysisSchemeStatus
        |> JDP.required "options" analysisSchemeDecoder
        |> JDP.required "status" optionStatusDecoder




{-| <p>The status and configuration of the domain's availability options.</p>
-}
type alias AvailabilityOptionsStatus =
    { options : Bool
    , status : OptionStatus
    }



availabilityOptionsStatusDecoder : JD.Decoder AvailabilityOptionsStatus
availabilityOptionsStatusDecoder =
    JDP.decode AvailabilityOptionsStatus
        |> JDP.required "options" JD.bool
        |> JDP.required "status" optionStatusDecoder




{-| <p>An error occurred while processing the request.</p>
-}
type alias BaseException =
    { code : Maybe String
    , message : Maybe String
    }



baseExceptionDecoder : JD.Decoder BaseException
baseExceptionDecoder =
    JDP.decode BaseException
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from buildSuggesters
-}
type alias BuildSuggestersResponse =
    { fieldNames : Maybe (List String)
    }



buildSuggestersResponseDecoder : JD.Decoder BuildSuggestersResponse
buildSuggestersResponseDecoder =
    JDP.decode BuildSuggestersResponse
        |> JDP.optional "fieldNames" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from createDomain
-}
type alias CreateDomainResponse =
    { domainStatus : Maybe DomainStatus
    }



createDomainResponseDecoder : JD.Decoder CreateDomainResponse
createDomainResponseDecoder =
    JDP.decode CreateDomainResponse
        |> JDP.optional "domainStatus" (JD.nullable domainStatusDecoder) Nothing




{-| <p>Options for a field that contains an array of dates. Present if <code>IndexFieldType</code> specifies the field is of type <code>date-array</code>. All options are enabled by default.</p>
-}
type alias DateArrayOptions =
    { defaultValue : Maybe String
    , sourceFields : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    }



dateArrayOptionsDecoder : JD.Decoder DateArrayOptions
dateArrayOptionsDecoder =
    JDP.decode DateArrayOptions
        |> JDP.optional "defaultValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceFields" (JD.nullable JD.string) Nothing
        |> JDP.optional "facetEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "searchEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "returnEnabled" (JD.nullable JD.bool) Nothing




{-| <p>Options for a date field. Dates and times are specified in UTC (Coordinated Universal Time) according to IETF RFC3339: yyyy-mm-ddT00:00:00Z. Present if <code>IndexFieldType</code> specifies the field is of type <code>date</code>. All options are enabled by default.</p>
-}
type alias DateOptions =
    { defaultValue : Maybe String
    , sourceField : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    , sortEnabled : Maybe Bool
    }



dateOptionsDecoder : JD.Decoder DateOptions
dateOptionsDecoder =
    JDP.decode DateOptions
        |> JDP.optional "defaultValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceField" (JD.nullable JD.string) Nothing
        |> JDP.optional "facetEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "searchEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "returnEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "sortEnabled" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from defineAnalysisScheme
-}
type alias DefineAnalysisSchemeResponse =
    { analysisScheme : AnalysisSchemeStatus
    }



defineAnalysisSchemeResponseDecoder : JD.Decoder DefineAnalysisSchemeResponse
defineAnalysisSchemeResponseDecoder =
    JDP.decode DefineAnalysisSchemeResponse
        |> JDP.required "analysisScheme" analysisSchemeStatusDecoder




{-| Type of HTTP response from defineExpression
-}
type alias DefineExpressionResponse =
    { expression : ExpressionStatus
    }



defineExpressionResponseDecoder : JD.Decoder DefineExpressionResponse
defineExpressionResponseDecoder =
    JDP.decode DefineExpressionResponse
        |> JDP.required "expression" expressionStatusDecoder




{-| Type of HTTP response from defineIndexField
-}
type alias DefineIndexFieldResponse =
    { indexField : IndexFieldStatus
    }



defineIndexFieldResponseDecoder : JD.Decoder DefineIndexFieldResponse
defineIndexFieldResponseDecoder =
    JDP.decode DefineIndexFieldResponse
        |> JDP.required "indexField" indexFieldStatusDecoder




{-| Type of HTTP response from defineSuggester
-}
type alias DefineSuggesterResponse =
    { suggester : SuggesterStatus
    }



defineSuggesterResponseDecoder : JD.Decoder DefineSuggesterResponse
defineSuggesterResponseDecoder =
    JDP.decode DefineSuggesterResponse
        |> JDP.required "suggester" suggesterStatusDecoder




{-| Type of HTTP response from deleteAnalysisScheme
-}
type alias DeleteAnalysisSchemeResponse =
    { analysisScheme : AnalysisSchemeStatus
    }



deleteAnalysisSchemeResponseDecoder : JD.Decoder DeleteAnalysisSchemeResponse
deleteAnalysisSchemeResponseDecoder =
    JDP.decode DeleteAnalysisSchemeResponse
        |> JDP.required "analysisScheme" analysisSchemeStatusDecoder




{-| Type of HTTP response from deleteDomain
-}
type alias DeleteDomainResponse =
    { domainStatus : Maybe DomainStatus
    }



deleteDomainResponseDecoder : JD.Decoder DeleteDomainResponse
deleteDomainResponseDecoder =
    JDP.decode DeleteDomainResponse
        |> JDP.optional "domainStatus" (JD.nullable domainStatusDecoder) Nothing




{-| Type of HTTP response from deleteExpression
-}
type alias DeleteExpressionResponse =
    { expression : ExpressionStatus
    }



deleteExpressionResponseDecoder : JD.Decoder DeleteExpressionResponse
deleteExpressionResponseDecoder =
    JDP.decode DeleteExpressionResponse
        |> JDP.required "expression" expressionStatusDecoder




{-| Type of HTTP response from deleteIndexField
-}
type alias DeleteIndexFieldResponse =
    { indexField : IndexFieldStatus
    }



deleteIndexFieldResponseDecoder : JD.Decoder DeleteIndexFieldResponse
deleteIndexFieldResponseDecoder =
    JDP.decode DeleteIndexFieldResponse
        |> JDP.required "indexField" indexFieldStatusDecoder




{-| Type of HTTP response from deleteSuggester
-}
type alias DeleteSuggesterResponse =
    { suggester : SuggesterStatus
    }



deleteSuggesterResponseDecoder : JD.Decoder DeleteSuggesterResponse
deleteSuggesterResponseDecoder =
    JDP.decode DeleteSuggesterResponse
        |> JDP.required "suggester" suggesterStatusDecoder




{-| Type of HTTP response from describeAnalysisSchemes
-}
type alias DescribeAnalysisSchemesResponse =
    { analysisSchemes : (List AnalysisSchemeStatus)
    }



describeAnalysisSchemesResponseDecoder : JD.Decoder DescribeAnalysisSchemesResponse
describeAnalysisSchemesResponseDecoder =
    JDP.decode DescribeAnalysisSchemesResponse
        |> JDP.required "analysisSchemes" (JD.list analysisSchemeStatusDecoder)




{-| Type of HTTP response from describeAvailabilityOptions
-}
type alias DescribeAvailabilityOptionsResponse =
    { availabilityOptions : Maybe AvailabilityOptionsStatus
    }



describeAvailabilityOptionsResponseDecoder : JD.Decoder DescribeAvailabilityOptionsResponse
describeAvailabilityOptionsResponseDecoder =
    JDP.decode DescribeAvailabilityOptionsResponse
        |> JDP.optional "availabilityOptions" (JD.nullable availabilityOptionsStatusDecoder) Nothing




{-| Type of HTTP response from describeDomains
-}
type alias DescribeDomainsResponse =
    { domainStatusList : (List DomainStatus)
    }



describeDomainsResponseDecoder : JD.Decoder DescribeDomainsResponse
describeDomainsResponseDecoder =
    JDP.decode DescribeDomainsResponse
        |> JDP.required "domainStatusList" (JD.list domainStatusDecoder)




{-| Type of HTTP response from describeExpressions
-}
type alias DescribeExpressionsResponse =
    { expressions : (List ExpressionStatus)
    }



describeExpressionsResponseDecoder : JD.Decoder DescribeExpressionsResponse
describeExpressionsResponseDecoder =
    JDP.decode DescribeExpressionsResponse
        |> JDP.required "expressions" (JD.list expressionStatusDecoder)




{-| Type of HTTP response from describeIndexFields
-}
type alias DescribeIndexFieldsResponse =
    { indexFields : (List IndexFieldStatus)
    }



describeIndexFieldsResponseDecoder : JD.Decoder DescribeIndexFieldsResponse
describeIndexFieldsResponseDecoder =
    JDP.decode DescribeIndexFieldsResponse
        |> JDP.required "indexFields" (JD.list indexFieldStatusDecoder)




{-| Type of HTTP response from describeScalingParameters
-}
type alias DescribeScalingParametersResponse =
    { scalingParameters : ScalingParametersStatus
    }



describeScalingParametersResponseDecoder : JD.Decoder DescribeScalingParametersResponse
describeScalingParametersResponseDecoder =
    JDP.decode DescribeScalingParametersResponse
        |> JDP.required "scalingParameters" scalingParametersStatusDecoder




{-| Type of HTTP response from describeServiceAccessPolicies
-}
type alias DescribeServiceAccessPoliciesResponse =
    { accessPolicies : AccessPoliciesStatus
    }



describeServiceAccessPoliciesResponseDecoder : JD.Decoder DescribeServiceAccessPoliciesResponse
describeServiceAccessPoliciesResponseDecoder =
    JDP.decode DescribeServiceAccessPoliciesResponse
        |> JDP.required "accessPolicies" accessPoliciesStatusDecoder




{-| Type of HTTP response from describeSuggesters
-}
type alias DescribeSuggestersResponse =
    { suggesters : (List SuggesterStatus)
    }



describeSuggestersResponseDecoder : JD.Decoder DescribeSuggestersResponse
describeSuggestersResponseDecoder =
    JDP.decode DescribeSuggestersResponse
        |> JDP.required "suggesters" (JD.list suggesterStatusDecoder)




{-| <p>The request was rejected because it attempted an operation which is not enabled.</p>
-}
type alias DisabledOperationException =
    { 
    }



disabledOperationExceptionDecoder : JD.Decoder DisabledOperationException
disabledOperationExceptionDecoder =
    JDP.decode DisabledOperationException



{-| <p>Options for a search suggester.</p>
-}
type alias DocumentSuggesterOptions =
    { sourceField : String
    , fuzzyMatching : Maybe SuggesterFuzzyMatching
    , sortExpression : Maybe String
    }



documentSuggesterOptionsDecoder : JD.Decoder DocumentSuggesterOptions
documentSuggesterOptionsDecoder =
    JDP.decode DocumentSuggesterOptions
        |> JDP.required "sourceField" JD.string
        |> JDP.optional "fuzzyMatching" (JD.nullable suggesterFuzzyMatchingDecoder) Nothing
        |> JDP.optional "sortExpression" (JD.nullable JD.string) Nothing




{-| <p>The current status of the search domain.</p>
-}
type alias DomainStatus =
    { domainId : String
    , domainName : String
    , aRN : Maybe String
    , created : Maybe Bool
    , deleted : Maybe Bool
    , docService : Maybe ServiceEndpoint
    , searchService : Maybe ServiceEndpoint
    , requiresIndexDocuments : Bool
    , processing : Maybe Bool
    , searchInstanceType : Maybe String
    , searchPartitionCount : Maybe Int
    , searchInstanceCount : Maybe Int
    , limits : Maybe Limits
    }



domainStatusDecoder : JD.Decoder DomainStatus
domainStatusDecoder =
    JDP.decode DomainStatus
        |> JDP.required "domainId" JD.string
        |> JDP.required "domainName" JD.string
        |> JDP.optional "aRN" (JD.nullable JD.string) Nothing
        |> JDP.optional "created" (JD.nullable JD.bool) Nothing
        |> JDP.optional "deleted" (JD.nullable JD.bool) Nothing
        |> JDP.optional "docService" (JD.nullable serviceEndpointDecoder) Nothing
        |> JDP.optional "searchService" (JD.nullable serviceEndpointDecoder) Nothing
        |> JDP.required "requiresIndexDocuments" JD.bool
        |> JDP.optional "processing" (JD.nullable JD.bool) Nothing
        |> JDP.optional "searchInstanceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "searchPartitionCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "searchInstanceCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "limits" (JD.nullable limitsDecoder) Nothing




{-| <p>Options for a field that contains an array of double-precision 64-bit floating point values. Present if <code>IndexFieldType</code> specifies the field is of type <code>double-array</code>. All options are enabled by default.</p>
-}
type alias DoubleArrayOptions =
    { defaultValue : Maybe Float
    , sourceFields : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    }



doubleArrayOptionsDecoder : JD.Decoder DoubleArrayOptions
doubleArrayOptionsDecoder =
    JDP.decode DoubleArrayOptions
        |> JDP.optional "defaultValue" (JD.nullable JD.float) Nothing
        |> JDP.optional "sourceFields" (JD.nullable JD.string) Nothing
        |> JDP.optional "facetEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "searchEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "returnEnabled" (JD.nullable JD.bool) Nothing




{-| <p>Options for a double-precision 64-bit floating point field. Present if <code>IndexFieldType</code> specifies the field is of type <code>double</code>. All options are enabled by default.</p>
-}
type alias DoubleOptions =
    { defaultValue : Maybe Float
    , sourceField : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    , sortEnabled : Maybe Bool
    }



doubleOptionsDecoder : JD.Decoder DoubleOptions
doubleOptionsDecoder =
    JDP.decode DoubleOptions
        |> JDP.optional "defaultValue" (JD.nullable JD.float) Nothing
        |> JDP.optional "sourceField" (JD.nullable JD.string) Nothing
        |> JDP.optional "facetEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "searchEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "returnEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "sortEnabled" (JD.nullable JD.bool) Nothing




{-| <p>A named expression that can be evaluated at search time. Can be used to sort the search results, define other expressions, or return computed information in the search results. </p>
-}
type alias Expression =
    { expressionName : String
    , expressionValue : String
    }



expressionDecoder : JD.Decoder Expression
expressionDecoder =
    JDP.decode Expression
        |> JDP.required "expressionName" JD.string
        |> JDP.required "expressionValue" JD.string




{-| <p>The value of an <code>Expression</code> and its current status.</p>
-}
type alias ExpressionStatus =
    { options : Expression
    , status : OptionStatus
    }



expressionStatusDecoder : JD.Decoder ExpressionStatus
expressionStatusDecoder =
    JDP.decode ExpressionStatus
        |> JDP.required "options" expressionDecoder
        |> JDP.required "status" optionStatusDecoder




{-| Type of HTTP response from indexDocuments
-}
type alias IndexDocumentsResponse =
    { fieldNames : Maybe (List String)
    }



indexDocumentsResponseDecoder : JD.Decoder IndexDocumentsResponse
indexDocumentsResponseDecoder =
    JDP.decode IndexDocumentsResponse
        |> JDP.optional "fieldNames" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Configuration information for a field in the index, including its name, type, and options. The supported options depend on the <code><a>IndexFieldType</a></code>.</p>
-}
type alias IndexField =
    { indexFieldName : String
    , indexFieldType : IndexFieldType
    , intOptions : Maybe IntOptions
    , doubleOptions : Maybe DoubleOptions
    , literalOptions : Maybe LiteralOptions
    , textOptions : Maybe TextOptions
    , dateOptions : Maybe DateOptions
    , latLonOptions : Maybe LatLonOptions
    , intArrayOptions : Maybe IntArrayOptions
    , doubleArrayOptions : Maybe DoubleArrayOptions
    , literalArrayOptions : Maybe LiteralArrayOptions
    , textArrayOptions : Maybe TextArrayOptions
    , dateArrayOptions : Maybe DateArrayOptions
    }



indexFieldDecoder : JD.Decoder IndexField
indexFieldDecoder =
    JDP.decode IndexField
        |> JDP.required "indexFieldName" JD.string
        |> JDP.required "indexFieldType" indexFieldTypeDecoder
        |> JDP.optional "intOptions" (JD.nullable intOptionsDecoder) Nothing
        |> JDP.optional "doubleOptions" (JD.nullable doubleOptionsDecoder) Nothing
        |> JDP.optional "literalOptions" (JD.nullable literalOptionsDecoder) Nothing
        |> JDP.optional "textOptions" (JD.nullable textOptionsDecoder) Nothing
        |> JDP.optional "dateOptions" (JD.nullable dateOptionsDecoder) Nothing
        |> JDP.optional "latLonOptions" (JD.nullable latLonOptionsDecoder) Nothing
        |> JDP.optional "intArrayOptions" (JD.nullable intArrayOptionsDecoder) Nothing
        |> JDP.optional "doubleArrayOptions" (JD.nullable doubleArrayOptionsDecoder) Nothing
        |> JDP.optional "literalArrayOptions" (JD.nullable literalArrayOptionsDecoder) Nothing
        |> JDP.optional "textArrayOptions" (JD.nullable textArrayOptionsDecoder) Nothing
        |> JDP.optional "dateArrayOptions" (JD.nullable dateArrayOptionsDecoder) Nothing




{-| <p>The value of an <code>IndexField</code> and its current status.</p>
-}
type alias IndexFieldStatus =
    { options : IndexField
    , status : OptionStatus
    }



indexFieldStatusDecoder : JD.Decoder IndexFieldStatus
indexFieldStatusDecoder =
    JDP.decode IndexFieldStatus
        |> JDP.required "options" indexFieldDecoder
        |> JDP.required "status" optionStatusDecoder




{-| One of

* `IndexFieldType_int`
* `IndexFieldType_double`
* `IndexFieldType_literal`
* `IndexFieldType_text`
* `IndexFieldType_date`
* `IndexFieldType_latlon`
* `IndexFieldType_int-array`
* `IndexFieldType_double-array`
* `IndexFieldType_literal-array`
* `IndexFieldType_text-array`
* `IndexFieldType_date-array`

-}
type IndexFieldType
    = IndexFieldType_int
    | IndexFieldType_double
    | IndexFieldType_literal
    | IndexFieldType_text
    | IndexFieldType_date
    | IndexFieldType_latlon
    | IndexFieldType_int_array
    | IndexFieldType_double_array
    | IndexFieldType_literal_array
    | IndexFieldType_text_array
    | IndexFieldType_date_array



indexFieldTypeDecoder : JD.Decoder IndexFieldType
indexFieldTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "int" ->
                        JD.succeed IndexFieldType_int

                    "double" ->
                        JD.succeed IndexFieldType_double

                    "literal" ->
                        JD.succeed IndexFieldType_literal

                    "text" ->
                        JD.succeed IndexFieldType_text

                    "date" ->
                        JD.succeed IndexFieldType_date

                    "latlon" ->
                        JD.succeed IndexFieldType_latlon

                    "int_array" ->
                        JD.succeed IndexFieldType_int_array

                    "double_array" ->
                        JD.succeed IndexFieldType_double_array

                    "literal_array" ->
                        JD.succeed IndexFieldType_literal_array

                    "text_array" ->
                        JD.succeed IndexFieldType_text_array

                    "date_array" ->
                        JD.succeed IndexFieldType_date_array


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Options for a field that contains an array of 64-bit signed integers. Present if <code>IndexFieldType</code> specifies the field is of type <code>int-array</code>. All options are enabled by default.</p>
-}
type alias IntArrayOptions =
    { defaultValue : Maybe Int
    , sourceFields : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    }



intArrayOptionsDecoder : JD.Decoder IntArrayOptions
intArrayOptionsDecoder =
    JDP.decode IntArrayOptions
        |> JDP.optional "defaultValue" (JD.nullable JD.int) Nothing
        |> JDP.optional "sourceFields" (JD.nullable JD.string) Nothing
        |> JDP.optional "facetEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "searchEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "returnEnabled" (JD.nullable JD.bool) Nothing




{-| <p>Options for a 64-bit signed integer field. Present if <code>IndexFieldType</code> specifies the field is of type <code>int</code>. All options are enabled by default.</p>
-}
type alias IntOptions =
    { defaultValue : Maybe Int
    , sourceField : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    , sortEnabled : Maybe Bool
    }



intOptionsDecoder : JD.Decoder IntOptions
intOptionsDecoder =
    JDP.decode IntOptions
        |> JDP.optional "defaultValue" (JD.nullable JD.int) Nothing
        |> JDP.optional "sourceField" (JD.nullable JD.string) Nothing
        |> JDP.optional "facetEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "searchEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "returnEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "sortEnabled" (JD.nullable JD.bool) Nothing




{-| <p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href="http://status.aws.amazon.com/" target="_blank">Service Health Dashboard</a>.</p>
-}
type alias InternalException =
    { 
    }



internalExceptionDecoder : JD.Decoder InternalException
internalExceptionDecoder =
    JDP.decode InternalException



{-| <p>The request was rejected because it specified an invalid type definition.</p>
-}
type alias InvalidTypeException =
    { 
    }



invalidTypeExceptionDecoder : JD.Decoder InvalidTypeException
invalidTypeExceptionDecoder =
    JDP.decode InvalidTypeException



{-| <p>Options for a latlon field. A latlon field contains a location stored as a latitude and longitude value pair. Present if <code>IndexFieldType</code> specifies the field is of type <code>latlon</code>. All options are enabled by default.</p>
-}
type alias LatLonOptions =
    { defaultValue : Maybe String
    , sourceField : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    , sortEnabled : Maybe Bool
    }



latLonOptionsDecoder : JD.Decoder LatLonOptions
latLonOptionsDecoder =
    JDP.decode LatLonOptions
        |> JDP.optional "defaultValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceField" (JD.nullable JD.string) Nothing
        |> JDP.optional "facetEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "searchEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "returnEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "sortEnabled" (JD.nullable JD.bool) Nothing




{-| <p>The request was rejected because a resource limit has already been met.</p>
-}
type alias LimitExceededException =
    { 
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException



{-| undefined
-}
type alias Limits =
    { maximumReplicationCount : Int
    , maximumPartitionCount : Int
    }



limitsDecoder : JD.Decoder Limits
limitsDecoder =
    JDP.decode Limits
        |> JDP.required "maximumReplicationCount" JD.int
        |> JDP.required "maximumPartitionCount" JD.int




{-| Type of HTTP response from listDomainNames
-}
type alias ListDomainNamesResponse =
    { domainNames : Maybe (Dict String String)
    }



listDomainNamesResponseDecoder : JD.Decoder ListDomainNamesResponse
listDomainNamesResponseDecoder =
    JDP.decode ListDomainNamesResponse
        |> JDP.optional "domainNames" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p>Options for a field that contains an array of literal strings. Present if <code>IndexFieldType</code> specifies the field is of type <code>literal-array</code>. All options are enabled by default.</p>
-}
type alias LiteralArrayOptions =
    { defaultValue : Maybe String
    , sourceFields : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    }



literalArrayOptionsDecoder : JD.Decoder LiteralArrayOptions
literalArrayOptionsDecoder =
    JDP.decode LiteralArrayOptions
        |> JDP.optional "defaultValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceFields" (JD.nullable JD.string) Nothing
        |> JDP.optional "facetEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "searchEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "returnEnabled" (JD.nullable JD.bool) Nothing




{-| <p>Options for literal field. Present if <code>IndexFieldType</code> specifies the field is of type <code>literal</code>. All options are enabled by default.</p>
-}
type alias LiteralOptions =
    { defaultValue : Maybe String
    , sourceField : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    , sortEnabled : Maybe Bool
    }



literalOptionsDecoder : JD.Decoder LiteralOptions
literalOptionsDecoder =
    JDP.decode LiteralOptions
        |> JDP.optional "defaultValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceField" (JD.nullable JD.string) Nothing
        |> JDP.optional "facetEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "searchEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "returnEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "sortEnabled" (JD.nullable JD.bool) Nothing




{-| One of

* `OptionState_RequiresIndexDocuments`
* `OptionState_Processing`
* `OptionState_Active`
* `OptionState_FailedToValidate`

-}
type OptionState
    = OptionState_RequiresIndexDocuments
    | OptionState_Processing
    | OptionState_Active
    | OptionState_FailedToValidate



optionStateDecoder : JD.Decoder OptionState
optionStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RequiresIndexDocuments" ->
                        JD.succeed OptionState_RequiresIndexDocuments

                    "Processing" ->
                        JD.succeed OptionState_Processing

                    "Active" ->
                        JD.succeed OptionState_Active

                    "FailedToValidate" ->
                        JD.succeed OptionState_FailedToValidate


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The status of domain configuration option.</p>
-}
type alias OptionStatus =
    { creationDate : Date
    , updateDate : Date
    , updateVersion : Maybe Int
    , state : OptionState
    , pendingDeletion : Maybe Bool
    }



optionStatusDecoder : JD.Decoder OptionStatus
optionStatusDecoder =
    JDP.decode OptionStatus
        |> JDP.required "creationDate" JDX.date
        |> JDP.required "updateDate" JDX.date
        |> JDP.optional "updateVersion" (JD.nullable JD.int) Nothing
        |> JDP.required "state" optionStateDecoder
        |> JDP.optional "pendingDeletion" (JD.nullable JD.bool) Nothing




{-| One of

* `PartitionInstanceType_search.m1.small`
* `PartitionInstanceType_search.m1.large`
* `PartitionInstanceType_search.m2.xlarge`
* `PartitionInstanceType_search.m2.2xlarge`
* `PartitionInstanceType_search.m3.medium`
* `PartitionInstanceType_search.m3.large`
* `PartitionInstanceType_search.m3.xlarge`
* `PartitionInstanceType_search.m3.2xlarge`

-}
type PartitionInstanceType
    = PartitionInstanceType_search_m1_small
    | PartitionInstanceType_search_m1_large
    | PartitionInstanceType_search_m2_xlarge
    | PartitionInstanceType_search_m2_2xlarge
    | PartitionInstanceType_search_m3_medium
    | PartitionInstanceType_search_m3_large
    | PartitionInstanceType_search_m3_xlarge
    | PartitionInstanceType_search_m3_2xlarge



partitionInstanceTypeDecoder : JD.Decoder PartitionInstanceType
partitionInstanceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "search_m1_small" ->
                        JD.succeed PartitionInstanceType_search_m1_small

                    "search_m1_large" ->
                        JD.succeed PartitionInstanceType_search_m1_large

                    "search_m2_xlarge" ->
                        JD.succeed PartitionInstanceType_search_m2_xlarge

                    "search_m2_2xlarge" ->
                        JD.succeed PartitionInstanceType_search_m2_2xlarge

                    "search_m3_medium" ->
                        JD.succeed PartitionInstanceType_search_m3_medium

                    "search_m3_large" ->
                        JD.succeed PartitionInstanceType_search_m3_large

                    "search_m3_xlarge" ->
                        JD.succeed PartitionInstanceType_search_m3_xlarge

                    "search_m3_2xlarge" ->
                        JD.succeed PartitionInstanceType_search_m3_2xlarge


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The request was rejected because it attempted to reference a resource that does not exist.</p>
-}
type alias ResourceNotFoundException =
    { 
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException



{-| <p>The desired instance type and desired number of replicas of each index partition.</p>
-}
type alias ScalingParameters =
    { desiredInstanceType : Maybe PartitionInstanceType
    , desiredReplicationCount : Maybe Int
    , desiredPartitionCount : Maybe Int
    }



scalingParametersDecoder : JD.Decoder ScalingParameters
scalingParametersDecoder =
    JDP.decode ScalingParameters
        |> JDP.optional "desiredInstanceType" (JD.nullable partitionInstanceTypeDecoder) Nothing
        |> JDP.optional "desiredReplicationCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "desiredPartitionCount" (JD.nullable JD.int) Nothing




{-| <p>The status and configuration of a search domain's scaling parameters. </p>
-}
type alias ScalingParametersStatus =
    { options : ScalingParameters
    , status : OptionStatus
    }



scalingParametersStatusDecoder : JD.Decoder ScalingParametersStatus
scalingParametersStatusDecoder =
    JDP.decode ScalingParametersStatus
        |> JDP.required "options" scalingParametersDecoder
        |> JDP.required "status" optionStatusDecoder




{-| <p>The endpoint to which service requests can be submitted.</p>
-}
type alias ServiceEndpoint =
    { endpoint : Maybe String
    }



serviceEndpointDecoder : JD.Decoder ServiceEndpoint
serviceEndpointDecoder =
    JDP.decode ServiceEndpoint
        |> JDP.optional "endpoint" (JD.nullable JD.string) Nothing




{-| <p>Configuration information for a search suggester. Each suggester has a unique name and specifies the text field you want to use for suggestions. The following options can be configured for a suggester: <code>FuzzyMatching</code>, <code>SortExpression</code>. </p>
-}
type alias Suggester =
    { suggesterName : String
    , documentSuggesterOptions : DocumentSuggesterOptions
    }



suggesterDecoder : JD.Decoder Suggester
suggesterDecoder =
    JDP.decode Suggester
        |> JDP.required "suggesterName" JD.string
        |> JDP.required "documentSuggesterOptions" documentSuggesterOptionsDecoder




{-| One of

* `SuggesterFuzzyMatching_none`
* `SuggesterFuzzyMatching_low`
* `SuggesterFuzzyMatching_high`

-}
type SuggesterFuzzyMatching
    = SuggesterFuzzyMatching_none
    | SuggesterFuzzyMatching_low
    | SuggesterFuzzyMatching_high



suggesterFuzzyMatchingDecoder : JD.Decoder SuggesterFuzzyMatching
suggesterFuzzyMatchingDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "none" ->
                        JD.succeed SuggesterFuzzyMatching_none

                    "low" ->
                        JD.succeed SuggesterFuzzyMatching_low

                    "high" ->
                        JD.succeed SuggesterFuzzyMatching_high


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The value of a <code>Suggester</code> and its current status.</p>
-}
type alias SuggesterStatus =
    { options : Suggester
    , status : OptionStatus
    }



suggesterStatusDecoder : JD.Decoder SuggesterStatus
suggesterStatusDecoder =
    JDP.decode SuggesterStatus
        |> JDP.required "options" suggesterDecoder
        |> JDP.required "status" optionStatusDecoder




{-| <p>Options for a field that contains an array of text strings. Present if <code>IndexFieldType</code> specifies the field is of type <code>text-array</code>. A <code>text-array</code> field is always searchable. All options are enabled by default.</p>
-}
type alias TextArrayOptions =
    { defaultValue : Maybe String
    , sourceFields : Maybe String
    , returnEnabled : Maybe Bool
    , highlightEnabled : Maybe Bool
    , analysisScheme : Maybe String
    }



textArrayOptionsDecoder : JD.Decoder TextArrayOptions
textArrayOptionsDecoder =
    JDP.decode TextArrayOptions
        |> JDP.optional "defaultValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceFields" (JD.nullable JD.string) Nothing
        |> JDP.optional "returnEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "highlightEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "analysisScheme" (JD.nullable JD.string) Nothing




{-| <p>Options for text field. Present if <code>IndexFieldType</code> specifies the field is of type <code>text</code>. A <code>text</code> field is always searchable. All options are enabled by default.</p>
-}
type alias TextOptions =
    { defaultValue : Maybe String
    , sourceField : Maybe String
    , returnEnabled : Maybe Bool
    , sortEnabled : Maybe Bool
    , highlightEnabled : Maybe Bool
    , analysisScheme : Maybe String
    }



textOptionsDecoder : JD.Decoder TextOptions
textOptionsDecoder =
    JDP.decode TextOptions
        |> JDP.optional "defaultValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceField" (JD.nullable JD.string) Nothing
        |> JDP.optional "returnEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "sortEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "highlightEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "analysisScheme" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateAvailabilityOptions
-}
type alias UpdateAvailabilityOptionsResponse =
    { availabilityOptions : Maybe AvailabilityOptionsStatus
    }



updateAvailabilityOptionsResponseDecoder : JD.Decoder UpdateAvailabilityOptionsResponse
updateAvailabilityOptionsResponseDecoder =
    JDP.decode UpdateAvailabilityOptionsResponse
        |> JDP.optional "availabilityOptions" (JD.nullable availabilityOptionsStatusDecoder) Nothing




{-| Type of HTTP response from updateScalingParameters
-}
type alias UpdateScalingParametersResponse =
    { scalingParameters : ScalingParametersStatus
    }



updateScalingParametersResponseDecoder : JD.Decoder UpdateScalingParametersResponse
updateScalingParametersResponseDecoder =
    JDP.decode UpdateScalingParametersResponse
        |> JDP.required "scalingParameters" scalingParametersStatusDecoder




{-| Type of HTTP response from updateServiceAccessPolicies
-}
type alias UpdateServiceAccessPoliciesResponse =
    { accessPolicies : AccessPoliciesStatus
    }



updateServiceAccessPoliciesResponseDecoder : JD.Decoder UpdateServiceAccessPoliciesResponse
updateServiceAccessPoliciesResponseDecoder =
    JDP.decode UpdateServiceAccessPoliciesResponse
        |> JDP.required "accessPolicies" accessPoliciesStatusDecoder




