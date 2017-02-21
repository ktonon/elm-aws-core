module AWS.Services.ElasticsearchService
    exposing
        ( config
        , addTags
        , createElasticsearchDomain
        , CreateElasticsearchDomainOptions
        , deleteElasticsearchDomain
        , describeElasticsearchDomain
        , describeElasticsearchDomainConfig
        , describeElasticsearchDomains
        , listDomainNames
        , listTags
        , removeTags
        , updateElasticsearchDomainConfig
        , UpdateElasticsearchDomainConfigOptions
        , AccessPoliciesStatus
        , AdvancedOptionsStatus
        , BaseException
        , CreateElasticsearchDomainResponse
        , DeleteElasticsearchDomainResponse
        , DescribeElasticsearchDomainConfigResponse
        , DescribeElasticsearchDomainResponse
        , DescribeElasticsearchDomainsResponse
        , DisabledOperationException
        , DomainInfo
        , EBSOptions
        , EBSOptionsStatus
        , ESPartitionInstanceType(..)
        , ElasticsearchClusterConfig
        , ElasticsearchClusterConfigStatus
        , ElasticsearchDomainConfig
        , ElasticsearchDomainStatus
        , ElasticsearchVersionStatus
        , InternalException
        , InvalidTypeException
        , LimitExceededException
        , ListDomainNamesResponse
        , ListTagsResponse
        , OptionState(..)
        , OptionStatus
        , ResourceAlreadyExistsException
        , ResourceNotFoundException
        , SnapshotOptions
        , SnapshotOptionsStatus
        , Tag
        , UpdateElasticsearchDomainConfigResponse
        , ValidationException
        , VolumeType(..)
        )

{-| <fullname>Amazon Elasticsearch Configuration Service</fullname> <p>Use the Amazon Elasticsearch configuration API to create, configure, and manage Elasticsearch domains.</p> <p>The endpoint for configuration service requests is region-specific: es.<i>region</i>.amazonaws.com. For example, es.us-east-1.amazonaws.com. For a current list of supported regions and endpoints, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticsearch-service-regions" target="_blank">Regions and Endpoints</a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addTags](#addTags)
* [createElasticsearchDomain](#createElasticsearchDomain)
* [CreateElasticsearchDomainOptions](#CreateElasticsearchDomainOptions)
* [deleteElasticsearchDomain](#deleteElasticsearchDomain)
* [describeElasticsearchDomain](#describeElasticsearchDomain)
* [describeElasticsearchDomainConfig](#describeElasticsearchDomainConfig)
* [describeElasticsearchDomains](#describeElasticsearchDomains)
* [listDomainNames](#listDomainNames)
* [listTags](#listTags)
* [removeTags](#removeTags)
* [updateElasticsearchDomainConfig](#updateElasticsearchDomainConfig)
* [UpdateElasticsearchDomainConfigOptions](#UpdateElasticsearchDomainConfigOptions)


@docs addTags,createElasticsearchDomain,CreateElasticsearchDomainOptions,deleteElasticsearchDomain,describeElasticsearchDomain,describeElasticsearchDomainConfig,describeElasticsearchDomains,listDomainNames,listTags,removeTags,updateElasticsearchDomainConfig,UpdateElasticsearchDomainConfigOptions

## Responses

* [CreateElasticsearchDomainResponse](#CreateElasticsearchDomainResponse)
* [DeleteElasticsearchDomainResponse](#DeleteElasticsearchDomainResponse)
* [DescribeElasticsearchDomainConfigResponse](#DescribeElasticsearchDomainConfigResponse)
* [DescribeElasticsearchDomainResponse](#DescribeElasticsearchDomainResponse)
* [DescribeElasticsearchDomainsResponse](#DescribeElasticsearchDomainsResponse)
* [ListDomainNamesResponse](#ListDomainNamesResponse)
* [ListTagsResponse](#ListTagsResponse)
* [UpdateElasticsearchDomainConfigResponse](#UpdateElasticsearchDomainConfigResponse)


@docs CreateElasticsearchDomainResponse,DeleteElasticsearchDomainResponse,DescribeElasticsearchDomainConfigResponse,DescribeElasticsearchDomainResponse,DescribeElasticsearchDomainsResponse,ListDomainNamesResponse,ListTagsResponse,UpdateElasticsearchDomainConfigResponse

## Records

* [AccessPoliciesStatus](#AccessPoliciesStatus)
* [AdvancedOptionsStatus](#AdvancedOptionsStatus)
* [DomainInfo](#DomainInfo)
* [EBSOptions](#EBSOptions)
* [EBSOptionsStatus](#EBSOptionsStatus)
* [ElasticsearchClusterConfig](#ElasticsearchClusterConfig)
* [ElasticsearchClusterConfigStatus](#ElasticsearchClusterConfigStatus)
* [ElasticsearchDomainConfig](#ElasticsearchDomainConfig)
* [ElasticsearchDomainStatus](#ElasticsearchDomainStatus)
* [ElasticsearchVersionStatus](#ElasticsearchVersionStatus)
* [OptionStatus](#OptionStatus)
* [SnapshotOptions](#SnapshotOptions)
* [SnapshotOptionsStatus](#SnapshotOptionsStatus)
* [Tag](#Tag)


@docs AccessPoliciesStatus,AdvancedOptionsStatus,DomainInfo,EBSOptions,EBSOptionsStatus,ElasticsearchClusterConfig,ElasticsearchClusterConfigStatus,ElasticsearchDomainConfig,ElasticsearchDomainStatus,ElasticsearchVersionStatus,OptionStatus,SnapshotOptions,SnapshotOptionsStatus,Tag

## Unions

* [ESPartitionInstanceType](#ESPartitionInstanceType)
* [OptionState](#OptionState)
* [VolumeType](#VolumeType)


@docs ESPartitionInstanceType,OptionState,VolumeType

## Exceptions

* [BaseException](#BaseException)
* [DisabledOperationException](#DisabledOperationException)
* [InternalException](#InternalException)
* [InvalidTypeException](#InvalidTypeException)
* [LimitExceededException](#LimitExceededException)
* [ResourceAlreadyExistsException](#ResourceAlreadyExistsException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [ValidationException](#ValidationException)


@docs BaseException,DisabledOperationException,InternalException,InvalidTypeException,LimitExceededException,ResourceAlreadyExistsException,ResourceNotFoundException,ValidationException

-}

import AWS
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Dict exposing (Dict)
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config creds =
    AWS.ServiceConfig
        "es"
        "2015-01-01"
        "undefined"
        "AWSES_20150101."
        "es.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging" target="_blank"> Tagging Amazon Elasticsearch Service Domains for more information.</a></p>

__Required Parameters__

* `aRN` __:__ `String`
* `tagList` __:__ `(List Tag)`


-}
addTags :
    String
    -> (List Tag)
    -> AWS.Http.UnsignedRequest ()
addTags aRN tagList =
    AWS.Http.unsignedRequest
        "AddTags"
        "POST"
        "/2015-01-01/tags"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Creates a new Elasticsearch domain. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains" target="_blank">Creating Elasticsearch Domains</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
createElasticsearchDomain :
    String
    -> (CreateElasticsearchDomainOptions -> CreateElasticsearchDomainOptions)
    -> AWS.Http.UnsignedRequest CreateElasticsearchDomainResponse
createElasticsearchDomain domainName setOptions =
  let
    options = setOptions (CreateElasticsearchDomainOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateElasticsearchDomain"
        "POST"
        "/2015-01-01/es/domain"
        (AWS.Http.JsonBody
            JE.null
        )
        createElasticsearchDomainResponseDecoder


{-| Options for a createElasticsearchDomain request
-}
type alias CreateElasticsearchDomainOptions =
    { elasticsearchVersion : Maybe String
    , elasticsearchClusterConfig : Maybe ElasticsearchClusterConfig
    , eBSOptions : Maybe EBSOptions
    , accessPolicies : Maybe String
    , snapshotOptions : Maybe SnapshotOptions
    , advancedOptions : Maybe (Dict String String)
    }



{-| <p>Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
deleteElasticsearchDomain :
    String
    -> AWS.Http.UnsignedRequest DeleteElasticsearchDomainResponse
deleteElasticsearchDomain domainName =
    AWS.Http.unsignedRequest
        "DeleteElasticsearchDomain"
        "DELETE"
        "/2015-01-01/es/domain/{DomainName}"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteElasticsearchDomainResponseDecoder



{-| <p>Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
describeElasticsearchDomain :
    String
    -> AWS.Http.UnsignedRequest DescribeElasticsearchDomainResponse
describeElasticsearchDomain domainName =
    AWS.Http.unsignedRequest
        "DescribeElasticsearchDomain"
        "GET"
        "/2015-01-01/es/domain/{DomainName}"
        (AWS.Http.QueryParams
            [
            ]
        )
        describeElasticsearchDomainResponseDecoder



{-| <p>Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
describeElasticsearchDomainConfig :
    String
    -> AWS.Http.UnsignedRequest DescribeElasticsearchDomainConfigResponse
describeElasticsearchDomainConfig domainName =
    AWS.Http.unsignedRequest
        "DescribeElasticsearchDomainConfig"
        "GET"
        "/2015-01-01/es/domain/{DomainName}/config"
        (AWS.Http.QueryParams
            [
            ]
        )
        describeElasticsearchDomainConfigResponseDecoder



{-| <p>Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN.</p>

__Required Parameters__

* `domainNames` __:__ `(List String)`


-}
describeElasticsearchDomains :
    (List String)
    -> AWS.Http.UnsignedRequest DescribeElasticsearchDomainsResponse
describeElasticsearchDomains domainNames =
    AWS.Http.unsignedRequest
        "DescribeElasticsearchDomains"
        "POST"
        "/2015-01-01/es/domain-info"
        (AWS.Http.JsonBody
            JE.null
        )
        describeElasticsearchDomainsResponseDecoder



{-| <p>Returns the name of all Elasticsearch domains owned by the current user's account. </p>

__Required Parameters__



-}
listDomainNames :
    AWS.Http.UnsignedRequest ListDomainNamesResponse
listDomainNames =
    AWS.Http.unsignedRequest
        "ListDomainNames"
        "GET"
        "/2015-01-01/domain"
        (AWS.Http.QueryParams
            [
            ]
        )
        listDomainNamesResponseDecoder



{-| <p>Returns all tags for the given Elasticsearch domain.</p>

__Required Parameters__

* `aRN` __:__ `String`


-}
listTags :
    String
    -> AWS.Http.UnsignedRequest ListTagsResponse
listTags aRN =
    AWS.Http.unsignedRequest
        "ListTags"
        "GET"
        "/2015-01-01/tags/"
        (AWS.Http.QueryParams
            [
            ]
        )
        listTagsResponseDecoder



{-| <p>Removes the specified set of tags from the specified Elasticsearch domain.</p>

__Required Parameters__

* `aRN` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}
removeTags :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest ()
removeTags aRN tagKeys =
    AWS.Http.unsignedRequest
        "RemoveTags"
        "POST"
        "/2015-01-01/tags-removal"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances. </p>

__Required Parameters__

* `domainName` __:__ `String`


-}
updateElasticsearchDomainConfig :
    String
    -> (UpdateElasticsearchDomainConfigOptions -> UpdateElasticsearchDomainConfigOptions)
    -> AWS.Http.UnsignedRequest UpdateElasticsearchDomainConfigResponse
updateElasticsearchDomainConfig domainName setOptions =
  let
    options = setOptions (UpdateElasticsearchDomainConfigOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateElasticsearchDomainConfig"
        "POST"
        "/2015-01-01/es/domain/{DomainName}/config"
        (AWS.Http.JsonBody
            JE.null
        )
        updateElasticsearchDomainConfigResponseDecoder


{-| Options for a updateElasticsearchDomainConfig request
-}
type alias UpdateElasticsearchDomainConfigOptions =
    { elasticsearchClusterConfig : Maybe ElasticsearchClusterConfig
    , eBSOptions : Maybe EBSOptions
    , snapshotOptions : Maybe SnapshotOptions
    , advancedOptions : Maybe (Dict String String)
    , accessPolicies : Maybe String
    }




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




{-| <p> Status of the advanced options for the specified Elasticsearch domain. Currently, the following advanced options are available:</p> <ul> <li>Option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring access to individual sub-resources. By default, the value is <code>true</code>. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</li> <li>Option to specify the percentage of heap space that is allocated to field data. By default, this setting is unbounded.</li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options">Configuring Advanced Options</a>.</p>
-}
type alias AdvancedOptionsStatus =
    { options : (Dict String String)
    , status : OptionStatus
    }



advancedOptionsStatusDecoder : JD.Decoder AdvancedOptionsStatus
advancedOptionsStatusDecoder =
    JDP.decode AdvancedOptionsStatus
        |> JDP.required "options" (JD.dict JD.string)
        |> JDP.required "status" optionStatusDecoder




{-| <p>An error occurred while processing the request.</p>
-}
type alias BaseException =
    { message : Maybe String
    }



baseExceptionDecoder : JD.Decoder BaseException
baseExceptionDecoder =
    JDP.decode BaseException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createElasticsearchDomain
-}
type alias CreateElasticsearchDomainResponse =
    { domainStatus : Maybe ElasticsearchDomainStatus
    }



createElasticsearchDomainResponseDecoder : JD.Decoder CreateElasticsearchDomainResponse
createElasticsearchDomainResponseDecoder =
    JDP.decode CreateElasticsearchDomainResponse
        |> JDP.optional "domainStatus" (JD.nullable elasticsearchDomainStatusDecoder) Nothing




{-| Type of HTTP response from deleteElasticsearchDomain
-}
type alias DeleteElasticsearchDomainResponse =
    { domainStatus : Maybe ElasticsearchDomainStatus
    }



deleteElasticsearchDomainResponseDecoder : JD.Decoder DeleteElasticsearchDomainResponse
deleteElasticsearchDomainResponseDecoder =
    JDP.decode DeleteElasticsearchDomainResponse
        |> JDP.optional "domainStatus" (JD.nullable elasticsearchDomainStatusDecoder) Nothing




{-| Type of HTTP response from describeElasticsearchDomainConfig
-}
type alias DescribeElasticsearchDomainConfigResponse =
    { domainConfig : ElasticsearchDomainConfig
    }



describeElasticsearchDomainConfigResponseDecoder : JD.Decoder DescribeElasticsearchDomainConfigResponse
describeElasticsearchDomainConfigResponseDecoder =
    JDP.decode DescribeElasticsearchDomainConfigResponse
        |> JDP.required "domainConfig" elasticsearchDomainConfigDecoder




{-| Type of HTTP response from describeElasticsearchDomain
-}
type alias DescribeElasticsearchDomainResponse =
    { domainStatus : ElasticsearchDomainStatus
    }



describeElasticsearchDomainResponseDecoder : JD.Decoder DescribeElasticsearchDomainResponse
describeElasticsearchDomainResponseDecoder =
    JDP.decode DescribeElasticsearchDomainResponse
        |> JDP.required "domainStatus" elasticsearchDomainStatusDecoder




{-| Type of HTTP response from describeElasticsearchDomains
-}
type alias DescribeElasticsearchDomainsResponse =
    { domainStatusList : (List ElasticsearchDomainStatus)
    }



describeElasticsearchDomainsResponseDecoder : JD.Decoder DescribeElasticsearchDomainsResponse
describeElasticsearchDomainsResponseDecoder =
    JDP.decode DescribeElasticsearchDomainsResponse
        |> JDP.required "domainStatusList" (JD.list elasticsearchDomainStatusDecoder)




{-| <p>An error occured because the client wanted to access a not supported operation. Gives http status code of 409.</p>
-}
type alias DisabledOperationException =
    { 
    }



disabledOperationExceptionDecoder : JD.Decoder DisabledOperationException
disabledOperationExceptionDecoder =
    JDP.decode DisabledOperationException



{-| undefined
-}
type alias DomainInfo =
    { domainName : Maybe String
    }



domainInfoDecoder : JD.Decoder DomainInfo
domainInfoDecoder =
    JDP.decode DomainInfo
        |> JDP.optional "domainName" (JD.nullable JD.string) Nothing




{-| <p>Options to enable, disable, and specify the properties of EBS storage volumes. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs" target="_blank"> Configuring EBS-based Storage</a>.</p>
-}
type alias EBSOptions =
    { eBSEnabled : Maybe Bool
    , volumeType : Maybe VolumeType
    , volumeSize : Maybe Int
    , iops : Maybe Int
    }



eBSOptionsDecoder : JD.Decoder EBSOptions
eBSOptionsDecoder =
    JDP.decode EBSOptions
        |> JDP.optional "eBSEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "volumeType" (JD.nullable volumeTypeDecoder) Nothing
        |> JDP.optional "volumeSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "iops" (JD.nullable JD.int) Nothing




{-| <p> Status of the EBS options for the specified Elasticsearch domain.</p>
-}
type alias EBSOptionsStatus =
    { options : EBSOptions
    , status : OptionStatus
    }



eBSOptionsStatusDecoder : JD.Decoder EBSOptionsStatus
eBSOptionsStatusDecoder =
    JDP.decode EBSOptionsStatus
        |> JDP.required "options" eBSOptionsDecoder
        |> JDP.required "status" optionStatusDecoder




{-| One of

* `ESPartitionInstanceType_m3.medium.elasticsearch`
* `ESPartitionInstanceType_m3.large.elasticsearch`
* `ESPartitionInstanceType_m3.xlarge.elasticsearch`
* `ESPartitionInstanceType_m3.2xlarge.elasticsearch`
* `ESPartitionInstanceType_m4.large.elasticsearch`
* `ESPartitionInstanceType_m4.xlarge.elasticsearch`
* `ESPartitionInstanceType_m4.2xlarge.elasticsearch`
* `ESPartitionInstanceType_m4.4xlarge.elasticsearch`
* `ESPartitionInstanceType_m4.10xlarge.elasticsearch`
* `ESPartitionInstanceType_t2.micro.elasticsearch`
* `ESPartitionInstanceType_t2.small.elasticsearch`
* `ESPartitionInstanceType_t2.medium.elasticsearch`
* `ESPartitionInstanceType_r3.large.elasticsearch`
* `ESPartitionInstanceType_r3.xlarge.elasticsearch`
* `ESPartitionInstanceType_r3.2xlarge.elasticsearch`
* `ESPartitionInstanceType_r3.4xlarge.elasticsearch`
* `ESPartitionInstanceType_r3.8xlarge.elasticsearch`
* `ESPartitionInstanceType_i2.xlarge.elasticsearch`
* `ESPartitionInstanceType_i2.2xlarge.elasticsearch`

-}
type ESPartitionInstanceType
    = ESPartitionInstanceType_m3_medium_elasticsearch
    | ESPartitionInstanceType_m3_large_elasticsearch
    | ESPartitionInstanceType_m3_xlarge_elasticsearch
    | ESPartitionInstanceType_m3_2xlarge_elasticsearch
    | ESPartitionInstanceType_m4_large_elasticsearch
    | ESPartitionInstanceType_m4_xlarge_elasticsearch
    | ESPartitionInstanceType_m4_2xlarge_elasticsearch
    | ESPartitionInstanceType_m4_4xlarge_elasticsearch
    | ESPartitionInstanceType_m4_10xlarge_elasticsearch
    | ESPartitionInstanceType_t2_micro_elasticsearch
    | ESPartitionInstanceType_t2_small_elasticsearch
    | ESPartitionInstanceType_t2_medium_elasticsearch
    | ESPartitionInstanceType_r3_large_elasticsearch
    | ESPartitionInstanceType_r3_xlarge_elasticsearch
    | ESPartitionInstanceType_r3_2xlarge_elasticsearch
    | ESPartitionInstanceType_r3_4xlarge_elasticsearch
    | ESPartitionInstanceType_r3_8xlarge_elasticsearch
    | ESPartitionInstanceType_i2_xlarge_elasticsearch
    | ESPartitionInstanceType_i2_2xlarge_elasticsearch



eSPartitionInstanceTypeDecoder : JD.Decoder ESPartitionInstanceType
eSPartitionInstanceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "m3_medium_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_m3_medium_elasticsearch

                    "m3_large_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_m3_large_elasticsearch

                    "m3_xlarge_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_m3_xlarge_elasticsearch

                    "m3_2xlarge_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_m3_2xlarge_elasticsearch

                    "m4_large_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_m4_large_elasticsearch

                    "m4_xlarge_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_m4_xlarge_elasticsearch

                    "m4_2xlarge_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_m4_2xlarge_elasticsearch

                    "m4_4xlarge_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_m4_4xlarge_elasticsearch

                    "m4_10xlarge_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_m4_10xlarge_elasticsearch

                    "t2_micro_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_t2_micro_elasticsearch

                    "t2_small_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_t2_small_elasticsearch

                    "t2_medium_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_t2_medium_elasticsearch

                    "r3_large_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_r3_large_elasticsearch

                    "r3_xlarge_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_r3_xlarge_elasticsearch

                    "r3_2xlarge_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_r3_2xlarge_elasticsearch

                    "r3_4xlarge_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_r3_4xlarge_elasticsearch

                    "r3_8xlarge_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_r3_8xlarge_elasticsearch

                    "i2_xlarge_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_i2_xlarge_elasticsearch

                    "i2_2xlarge_elasticsearch" ->
                        JD.succeed ESPartitionInstanceType_i2_2xlarge_elasticsearch


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Specifies the configuration for the domain cluster, such as the type and number of instances.</p>
-}
type alias ElasticsearchClusterConfig =
    { instanceType : Maybe ESPartitionInstanceType
    , instanceCount : Maybe Int
    , dedicatedMasterEnabled : Maybe Bool
    , zoneAwarenessEnabled : Maybe Bool
    , dedicatedMasterType : Maybe ESPartitionInstanceType
    , dedicatedMasterCount : Maybe Int
    }



elasticsearchClusterConfigDecoder : JD.Decoder ElasticsearchClusterConfig
elasticsearchClusterConfigDecoder =
    JDP.decode ElasticsearchClusterConfig
        |> JDP.optional "instanceType" (JD.nullable eSPartitionInstanceTypeDecoder) Nothing
        |> JDP.optional "instanceCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "dedicatedMasterEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "zoneAwarenessEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "dedicatedMasterType" (JD.nullable eSPartitionInstanceTypeDecoder) Nothing
        |> JDP.optional "dedicatedMasterCount" (JD.nullable JD.int) Nothing




{-| <p> Specifies the configuration status for the specified Elasticsearch domain.</p>
-}
type alias ElasticsearchClusterConfigStatus =
    { options : ElasticsearchClusterConfig
    , status : OptionStatus
    }



elasticsearchClusterConfigStatusDecoder : JD.Decoder ElasticsearchClusterConfigStatus
elasticsearchClusterConfigStatusDecoder =
    JDP.decode ElasticsearchClusterConfigStatus
        |> JDP.required "options" elasticsearchClusterConfigDecoder
        |> JDP.required "status" optionStatusDecoder




{-| <p>The configuration of an Elasticsearch domain.</p>
-}
type alias ElasticsearchDomainConfig =
    { elasticsearchVersion : Maybe ElasticsearchVersionStatus
    , elasticsearchClusterConfig : Maybe ElasticsearchClusterConfigStatus
    , eBSOptions : Maybe EBSOptionsStatus
    , accessPolicies : Maybe AccessPoliciesStatus
    , snapshotOptions : Maybe SnapshotOptionsStatus
    , advancedOptions : Maybe AdvancedOptionsStatus
    }



elasticsearchDomainConfigDecoder : JD.Decoder ElasticsearchDomainConfig
elasticsearchDomainConfigDecoder =
    JDP.decode ElasticsearchDomainConfig
        |> JDP.optional "elasticsearchVersion" (JD.nullable elasticsearchVersionStatusDecoder) Nothing
        |> JDP.optional "elasticsearchClusterConfig" (JD.nullable elasticsearchClusterConfigStatusDecoder) Nothing
        |> JDP.optional "eBSOptions" (JD.nullable eBSOptionsStatusDecoder) Nothing
        |> JDP.optional "accessPolicies" (JD.nullable accessPoliciesStatusDecoder) Nothing
        |> JDP.optional "snapshotOptions" (JD.nullable snapshotOptionsStatusDecoder) Nothing
        |> JDP.optional "advancedOptions" (JD.nullable advancedOptionsStatusDecoder) Nothing




{-| <p>The current status of an Elasticsearch domain.</p>
-}
type alias ElasticsearchDomainStatus =
    { domainId : String
    , domainName : String
    , aRN : String
    , created : Maybe Bool
    , deleted : Maybe Bool
    , endpoint : Maybe String
    , processing : Maybe Bool
    , elasticsearchVersion : Maybe String
    , elasticsearchClusterConfig : ElasticsearchClusterConfig
    , eBSOptions : Maybe EBSOptions
    , accessPolicies : Maybe String
    , snapshotOptions : Maybe SnapshotOptions
    , advancedOptions : Maybe (Dict String String)
    }



elasticsearchDomainStatusDecoder : JD.Decoder ElasticsearchDomainStatus
elasticsearchDomainStatusDecoder =
    JDP.decode ElasticsearchDomainStatus
        |> JDP.required "domainId" JD.string
        |> JDP.required "domainName" JD.string
        |> JDP.required "aRN" JD.string
        |> JDP.optional "created" (JD.nullable JD.bool) Nothing
        |> JDP.optional "deleted" (JD.nullable JD.bool) Nothing
        |> JDP.optional "endpoint" (JD.nullable JD.string) Nothing
        |> JDP.optional "processing" (JD.nullable JD.bool) Nothing
        |> JDP.optional "elasticsearchVersion" (JD.nullable JD.string) Nothing
        |> JDP.required "elasticsearchClusterConfig" elasticsearchClusterConfigDecoder
        |> JDP.optional "eBSOptions" (JD.nullable eBSOptionsDecoder) Nothing
        |> JDP.optional "accessPolicies" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotOptions" (JD.nullable snapshotOptionsDecoder) Nothing
        |> JDP.optional "advancedOptions" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p> Status of the Elasticsearch version options for the specified Elasticsearch domain.</p>
-}
type alias ElasticsearchVersionStatus =
    { options : String
    , status : OptionStatus
    }



elasticsearchVersionStatusDecoder : JD.Decoder ElasticsearchVersionStatus
elasticsearchVersionStatusDecoder =
    JDP.decode ElasticsearchVersionStatus
        |> JDP.required "options" JD.string
        |> JDP.required "status" optionStatusDecoder




{-| <p>The request processing has failed because of an unknown error, exception or failure (the failure is internal to the service) . Gives http status code of 500.</p>
-}
type alias InternalException =
    { 
    }



internalExceptionDecoder : JD.Decoder InternalException
internalExceptionDecoder =
    JDP.decode InternalException



{-| <p>An exception for trying to create or access sub-resource that is either invalid or not supported. Gives http status code of 409.</p>
-}
type alias InvalidTypeException =
    { 
    }



invalidTypeExceptionDecoder : JD.Decoder InvalidTypeException
invalidTypeExceptionDecoder =
    JDP.decode InvalidTypeException



{-| <p>An exception for trying to create more than allowed resources or sub-resources. Gives http status code of 409.</p>
-}
type alias LimitExceededException =
    { 
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException



{-| Type of HTTP response from listDomainNames
-}
type alias ListDomainNamesResponse =
    { domainNames : Maybe (List DomainInfo)
    }



listDomainNamesResponseDecoder : JD.Decoder ListDomainNamesResponse
listDomainNamesResponseDecoder =
    JDP.decode ListDomainNamesResponse
        |> JDP.optional "domainNames" (JD.nullable (JD.list domainInfoDecoder)) Nothing




{-| Type of HTTP response from listTags
-}
type alias ListTagsResponse =
    { tagList : Maybe (List Tag)
    }



listTagsResponseDecoder : JD.Decoder ListTagsResponse
listTagsResponseDecoder =
    JDP.decode ListTagsResponse
        |> JDP.optional "tagList" (JD.nullable (JD.list tagDecoder)) Nothing




{-| One of

* `OptionState_RequiresIndexDocuments`
* `OptionState_Processing`
* `OptionState_Active`

-}
type OptionState
    = OptionState_RequiresIndexDocuments
    | OptionState_Processing
    | OptionState_Active



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


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides the current status of the entity.</p>
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




{-| <p>An exception for creating a resource that already exists. Gives http status code of 400.</p>
-}
type alias ResourceAlreadyExistsException =
    { 
    }



resourceAlreadyExistsExceptionDecoder : JD.Decoder ResourceAlreadyExistsException
resourceAlreadyExistsExceptionDecoder =
    JDP.decode ResourceAlreadyExistsException



{-| <p>An exception for accessing or deleting a resource that does not exist. Gives http status code of 400.</p>
-}
type alias ResourceNotFoundException =
    { 
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException



{-| <p>Specifies the time, in UTC format, when the service takes a daily automated snapshot of the specified Elasticsearch domain. Default value is <code>0</code> hours.</p>
-}
type alias SnapshotOptions =
    { automatedSnapshotStartHour : Maybe Int
    }



snapshotOptionsDecoder : JD.Decoder SnapshotOptions
snapshotOptionsDecoder =
    JDP.decode SnapshotOptions
        |> JDP.optional "automatedSnapshotStartHour" (JD.nullable JD.int) Nothing




{-| <p>Status of a daily automated snapshot.</p>
-}
type alias SnapshotOptionsStatus =
    { options : SnapshotOptions
    , status : OptionStatus
    }



snapshotOptionsStatusDecoder : JD.Decoder SnapshotOptionsStatus
snapshotOptionsStatusDecoder =
    JDP.decode SnapshotOptionsStatus
        |> JDP.required "options" snapshotOptionsDecoder
        |> JDP.required "status" optionStatusDecoder




{-| <p>Specifies a key value pair for a resource tag.</p>
-}
type alias Tag =
    { key : String
    , value : String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JDP.decode Tag
        |> JDP.required "key" JD.string
        |> JDP.required "value" JD.string




{-| Type of HTTP response from updateElasticsearchDomainConfig
-}
type alias UpdateElasticsearchDomainConfigResponse =
    { domainConfig : ElasticsearchDomainConfig
    }



updateElasticsearchDomainConfigResponseDecoder : JD.Decoder UpdateElasticsearchDomainConfigResponse
updateElasticsearchDomainConfigResponseDecoder =
    JDP.decode UpdateElasticsearchDomainConfigResponse
        |> JDP.required "domainConfig" elasticsearchDomainConfigDecoder




{-| <p>An exception for missing / invalid input fields. Gives http status code of 400.</p>
-}
type alias ValidationException =
    { 
    }



validationExceptionDecoder : JD.Decoder ValidationException
validationExceptionDecoder =
    JDP.decode ValidationException



{-| One of

* `VolumeType_standard`
* `VolumeType_gp2`
* `VolumeType_io1`

-}
type VolumeType
    = VolumeType_standard
    | VolumeType_gp2
    | VolumeType_io1



volumeTypeDecoder : JD.Decoder VolumeType
volumeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "standard" ->
                        JD.succeed VolumeType_standard

                    "gp2" ->
                        JD.succeed VolumeType_gp2

                    "io1" ->
                        JD.succeed VolumeType_io1


                    _ ->
                        JD.fail "bad thing"
            )



