module AWS.Services.CloudSearchDomain
    exposing
        ( config
        , search
        , SearchOptions
        , suggest
        , SuggestOptions
        , uploadDocuments
        , Bucket
        , BucketInfo
        , ContentType(..)
        , DocumentServiceException
        , DocumentServiceWarning
        , FieldStats
        , Hit
        , Hits
        , QueryParser(..)
        , SearchException
        , SearchResponse
        , SearchStatus
        , SuggestModel
        , SuggestResponse
        , SuggestStatus
        , SuggestionMatch
        , UploadDocumentsResponse
        )

{-| <p>You use the AmazonCloudSearch2013 API to upload documents to a search domain and search those documents. </p> <p>The endpoints for submitting <code>UploadDocuments</code>, <code>Search</code>, and <code>Suggest</code> requests are domain-specific. To get the endpoints for your domain, use the Amazon CloudSearch configuration service <code>DescribeDomains</code> action. The domain endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. You submit suggest requests to the search endpoint. </p> <p>For more information, see the <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide">Amazon CloudSearch Developer Guide</a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [search](#search)
* [SearchOptions](#SearchOptions)
* [suggest](#suggest)
* [SuggestOptions](#SuggestOptions)
* [uploadDocuments](#uploadDocuments)


@docs search,SearchOptions,suggest,SuggestOptions,uploadDocuments

## Responses

* [SearchResponse](#SearchResponse)
* [SuggestResponse](#SuggestResponse)
* [UploadDocumentsResponse](#UploadDocumentsResponse)


@docs SearchResponse,SuggestResponse,UploadDocumentsResponse

## Records

* [Bucket](#Bucket)
* [BucketInfo](#BucketInfo)
* [DocumentServiceWarning](#DocumentServiceWarning)
* [FieldStats](#FieldStats)
* [Hit](#Hit)
* [Hits](#Hits)
* [SearchStatus](#SearchStatus)
* [SuggestModel](#SuggestModel)
* [SuggestStatus](#SuggestStatus)
* [SuggestionMatch](#SuggestionMatch)


@docs Bucket,BucketInfo,DocumentServiceWarning,FieldStats,Hit,Hits,SearchStatus,SuggestModel,SuggestStatus,SuggestionMatch

## Unions

* [ContentType](#ContentType)
* [QueryParser](#QueryParser)


@docs ContentType,QueryParser

## Exceptions

* [DocumentServiceException](#DocumentServiceException)
* [SearchException](#SearchException)


@docs DocumentServiceException,SearchException

-}

import AWS
import AWS.Config
import AWS.Http
import AWS.Util
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Dict exposing (Dict)


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config maybeCreds =
    AWS.Config.Service
        "cloudsearchdomain"
        "2013-01-01"
        "1.1"
        "AWSCLOUDSEARCHDOMAIN_20130101."
        "cloudsearchdomain.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Retrieves a list of documents that match the specified search criteria. How you specify the search criteria depends on which query parser you use. Amazon CloudSearch supports four query parsers:</p> <ul> <li><code>simple</code>: search all <code>text</code> and <code>text-array</code> fields for the specified string. Search for phrases, individual terms, and prefixes. </li> <li><code>structured</code>: search specific fields, construct compound queries using Boolean operators, and use advanced features such as term boosting and proximity searching.</li> <li><code>lucene</code>: specify search criteria using the Apache Lucene query parser syntax.</li> <li><code>dismax</code>: specify search criteria using the simplified subset of the Apache Lucene query parser syntax defined by the DisMax query parser.</li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching.html">Searching Your Data</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p> <p>The endpoint for submitting <code>Search</code> requests is domain-specific. You submit search requests to a domain's search endpoint. To get the search endpoint for your domain, use the Amazon CloudSearch configuration service <code>DescribeDomains</code> action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. </p>

__Required Parameters__

* `query` __:__ `String`


-}
search :
    String
    -> (SearchOptions -> SearchOptions)
    -> AWS.Request SearchResponse
search query setOptions =
  let
    options = setOptions (SearchOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "Search"
        "GET"
        "/2013-01-01/search?format=sdk&pretty=true"
        (AWS.Http.QueryParams
            [
            ]
        )
        searchResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a search request
-}
type alias SearchOptions =
    { cursor : Maybe String
    , expr : Maybe String
    , facet : Maybe String
    , filterQuery : Maybe String
    , highlight : Maybe String
    , partial : Maybe Bool
    , queryOptions : Maybe String
    , queryParser : Maybe QueryParser
    , return : Maybe String
    , size : Maybe Int
    , sort : Maybe String
    , start : Maybe Int
    , stats : Maybe String
    }



{-| <p>Retrieves autocomplete suggestions for a partial query string. You can use suggestions enable you to display likely matches before users finish typing. In Amazon CloudSearch, suggestions are based on the contents of a particular text field. When you request suggestions, Amazon CloudSearch finds all of the documents whose values in the suggester field start with the specified query string. The beginning of the field must match the query string to be considered a match. </p> <p>For more information about configuring suggesters and retrieving suggestions, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html">Getting Suggestions</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p> <p>The endpoint for submitting <code>Suggest</code> requests is domain-specific. You submit suggest requests to a domain's search endpoint. To get the search endpoint for your domain, use the Amazon CloudSearch configuration service <code>DescribeDomains</code> action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. </p>

__Required Parameters__

* `query` __:__ `String`
* `suggester` __:__ `String`


-}
suggest :
    String
    -> String
    -> (SuggestOptions -> SuggestOptions)
    -> AWS.Request SuggestResponse
suggest query suggester setOptions =
  let
    options = setOptions (SuggestOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "Suggest"
        "GET"
        "/2013-01-01/suggest?format=sdk&pretty=true"
        (AWS.Http.QueryParams
            [
            ]
        )
        suggestResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a suggest request
-}
type alias SuggestOptions =
    { size : Maybe Int
    }



{-| <p>Posts a batch of documents to a search domain for indexing. A document batch is a collection of add and delete operations that represent the documents you want to add, update, or delete from your domain. Batches can be described in either JSON or XML. Each item that you want Amazon CloudSearch to return as a search result (such as a product) is represented as a document. Every document has a unique ID and one or more fields that contain the data that you want to search and return in results. Individual documents cannot contain more than 1 MB of data. The entire batch cannot exceed 5 MB. To get the best possible upload performance, group add and delete operations in batches that are close the 5 MB limit. Submitting a large volume of single-document batches can overload a domain's document service. </p> <p>The endpoint for submitting <code>UploadDocuments</code> requests is domain-specific. To get the document endpoint for your domain, use the Amazon CloudSearch configuration service <code>DescribeDomains</code> action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. </p> <p>For more information about formatting your data for Amazon CloudSearch, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/preparing-data.html">Preparing Your Data</a> in the <i>Amazon CloudSearch Developer Guide</i>. For more information about uploading data for indexing, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/uploading-data.html">Uploading Data</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>

__Required Parameters__

* `documents` __:__ `String`
* `contentType` __:__ `ContentType`


-}
uploadDocuments :
    String
    -> ContentType
    -> AWS.Request UploadDocumentsResponse
uploadDocuments documents contentType =
    AWS.Http.unsignedRequest
        "UploadDocuments"
        "POST"
        "/2013-01-01/documents/batch?format=sdk"
        (AWS.Http.JsonBody
            JE.null
        )
        uploadDocumentsResponseDecoder
        |> AWS.UnsignedRequest




{-| <p>A container for facet information. </p>
-}
type alias Bucket =
    { value : Maybe String
    , count : Maybe Int
    }



bucketDecoder : JD.Decoder Bucket
bucketDecoder =
    JDP.decode Bucket
        |> JDP.optional "value" (JD.nullable JD.string) Nothing
        |> JDP.optional "count" (JD.nullable JD.int) Nothing




{-| <p>A container for the calculated facet values and counts.</p>
-}
type alias BucketInfo =
    { buckets : Maybe (List Bucket)
    }



bucketInfoDecoder : JD.Decoder BucketInfo
bucketInfoDecoder =
    JDP.decode BucketInfo
        |> JDP.optional "buckets" (JD.nullable (JD.list bucketDecoder)) Nothing




{-| One of

* `ContentType_application/json`
* `ContentType_application/xml`

-}
type ContentType
    = ContentType_application_json
    | ContentType_application_xml



contentTypeDecoder : JD.Decoder ContentType
contentTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "application_json" ->
                        JD.succeed ContentType_application_json

                    "application_xml" ->
                        JD.succeed ContentType_application_xml


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about any problems encountered while processing an upload request.</p>
-}
type alias DocumentServiceException =
    { status : Maybe String
    , message : Maybe String
    }



documentServiceExceptionDecoder : JD.Decoder DocumentServiceException
documentServiceExceptionDecoder =
    JDP.decode DocumentServiceException
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A warning returned by the document service when an issue is discovered while processing an upload request.</p>
-}
type alias DocumentServiceWarning =
    { message : Maybe String
    }



documentServiceWarningDecoder : JD.Decoder DocumentServiceWarning
documentServiceWarningDecoder =
    JDP.decode DocumentServiceWarning
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The statistics for a field calculated in the request.</p>
-}
type alias FieldStats =
    { min : Maybe String
    , max : Maybe String
    , count : Maybe Int
    , missing : Maybe Int
    , sum : Maybe Float
    , sumOfSquares : Maybe Float
    , mean : Maybe String
    , stddev : Maybe Float
    }



fieldStatsDecoder : JD.Decoder FieldStats
fieldStatsDecoder =
    JDP.decode FieldStats
        |> JDP.optional "min" (JD.nullable JD.string) Nothing
        |> JDP.optional "max" (JD.nullable JD.string) Nothing
        |> JDP.optional "count" (JD.nullable JD.int) Nothing
        |> JDP.optional "missing" (JD.nullable JD.int) Nothing
        |> JDP.optional "sum" (JD.nullable JD.float) Nothing
        |> JDP.optional "sumOfSquares" (JD.nullable JD.float) Nothing
        |> JDP.optional "mean" (JD.nullable JD.string) Nothing
        |> JDP.optional "stddev" (JD.nullable JD.float) Nothing




{-| <p>Information about a document that matches the search request.</p>
-}
type alias Hit =
    { id : Maybe String
    , fields : Maybe (Dict String (List String))
    , exprs : Maybe (Dict String String)
    , highlights : Maybe (Dict String String)
    }



hitDecoder : JD.Decoder Hit
hitDecoder =
    JDP.decode Hit
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "fields" (JD.nullable (JD.dict (JD.list JD.string))) Nothing
        |> JDP.optional "exprs" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "highlights" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p>The collection of documents that match the search request.</p>
-}
type alias Hits =
    { found : Maybe Int
    , start : Maybe Int
    , cursor : Maybe String
    , hit : Maybe (List Hit)
    }



hitsDecoder : JD.Decoder Hits
hitsDecoder =
    JDP.decode Hits
        |> JDP.optional "found" (JD.nullable JD.int) Nothing
        |> JDP.optional "start" (JD.nullable JD.int) Nothing
        |> JDP.optional "cursor" (JD.nullable JD.string) Nothing
        |> JDP.optional "hit" (JD.nullable (JD.list hitDecoder)) Nothing




{-| One of

* `QueryParser_simple`
* `QueryParser_structured`
* `QueryParser_lucene`
* `QueryParser_dismax`

-}
type QueryParser
    = QueryParser_simple
    | QueryParser_structured
    | QueryParser_lucene
    | QueryParser_dismax



queryParserDecoder : JD.Decoder QueryParser
queryParserDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "simple" ->
                        JD.succeed QueryParser_simple

                    "structured" ->
                        JD.succeed QueryParser_structured

                    "lucene" ->
                        JD.succeed QueryParser_lucene

                    "dismax" ->
                        JD.succeed QueryParser_dismax


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about any problems encountered while processing a search request.</p>
-}
type alias SearchException =
    { message : Maybe String
    }



searchExceptionDecoder : JD.Decoder SearchException
searchExceptionDecoder =
    JDP.decode SearchException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from search
-}
type alias SearchResponse =
    { status : Maybe SearchStatus
    , hits : Maybe Hits
    , facets : Maybe (Dict String BucketInfo)
    , stats : Maybe (Dict String FieldStats)
    }



searchResponseDecoder : JD.Decoder SearchResponse
searchResponseDecoder =
    JDP.decode SearchResponse
        |> JDP.optional "status" (JD.nullable searchStatusDecoder) Nothing
        |> JDP.optional "hits" (JD.nullable hitsDecoder) Nothing
        |> JDP.optional "facets" (JD.nullable (JD.dict bucketInfoDecoder)) Nothing
        |> JDP.optional "stats" (JD.nullable (JD.dict fieldStatsDecoder)) Nothing




{-| <p>Contains the resource id (<code>rid</code>) and the time it took to process the request (<code>timems</code>).</p>
-}
type alias SearchStatus =
    { timems : Maybe Int
    , rid : Maybe String
    }



searchStatusDecoder : JD.Decoder SearchStatus
searchStatusDecoder =
    JDP.decode SearchStatus
        |> JDP.optional "timems" (JD.nullable JD.int) Nothing
        |> JDP.optional "rid" (JD.nullable JD.string) Nothing




{-| <p>Container for the suggestion information returned in a <code>SuggestResponse</code>.</p>
-}
type alias SuggestModel =
    { query : Maybe String
    , found : Maybe Int
    , suggestions : Maybe (List SuggestionMatch)
    }



suggestModelDecoder : JD.Decoder SuggestModel
suggestModelDecoder =
    JDP.decode SuggestModel
        |> JDP.optional "query" (JD.nullable JD.string) Nothing
        |> JDP.optional "found" (JD.nullable JD.int) Nothing
        |> JDP.optional "suggestions" (JD.nullable (JD.list suggestionMatchDecoder)) Nothing




{-| Type of HTTP response from suggest
-}
type alias SuggestResponse =
    { status : Maybe SuggestStatus
    , suggest : Maybe SuggestModel
    }



suggestResponseDecoder : JD.Decoder SuggestResponse
suggestResponseDecoder =
    JDP.decode SuggestResponse
        |> JDP.optional "status" (JD.nullable suggestStatusDecoder) Nothing
        |> JDP.optional "suggest" (JD.nullable suggestModelDecoder) Nothing




{-| <p>Contains the resource id (<code>rid</code>) and the time it took to process the request (<code>timems</code>).</p>
-}
type alias SuggestStatus =
    { timems : Maybe Int
    , rid : Maybe String
    }



suggestStatusDecoder : JD.Decoder SuggestStatus
suggestStatusDecoder =
    JDP.decode SuggestStatus
        |> JDP.optional "timems" (JD.nullable JD.int) Nothing
        |> JDP.optional "rid" (JD.nullable JD.string) Nothing




{-| <p>An autocomplete suggestion that matches the query string specified in a <code>SuggestRequest</code>. </p>
-}
type alias SuggestionMatch =
    { suggestion : Maybe String
    , score : Maybe Int
    , id : Maybe String
    }



suggestionMatchDecoder : JD.Decoder SuggestionMatch
suggestionMatchDecoder =
    JDP.decode SuggestionMatch
        |> JDP.optional "suggestion" (JD.nullable JD.string) Nothing
        |> JDP.optional "score" (JD.nullable JD.int) Nothing
        |> JDP.optional "id" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from uploadDocuments
-}
type alias UploadDocumentsResponse =
    { status : Maybe String
    , adds : Maybe Int
    , deletes : Maybe Int
    , warnings : Maybe (List DocumentServiceWarning)
    }



uploadDocumentsResponseDecoder : JD.Decoder UploadDocumentsResponse
uploadDocumentsResponseDecoder =
    JDP.decode UploadDocumentsResponse
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "adds" (JD.nullable JD.int) Nothing
        |> JDP.optional "deletes" (JD.nullable JD.int) Nothing
        |> JDP.optional "warnings" (JD.nullable (JD.list documentServiceWarningDecoder)) Nothing




