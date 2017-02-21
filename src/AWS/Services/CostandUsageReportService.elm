module AWS.Services.CostandUsageReportService
    exposing
        ( config
        , deleteReportDefinition
        , DeleteReportDefinitionOptions
        , describeReportDefinitions
        , DescribeReportDefinitionsOptions
        , putReportDefinition
        , AWSRegion(..)
        , AdditionalArtifact(..)
        , CompressionFormat(..)
        , DeleteReportDefinitionResponse
        , DescribeReportDefinitionsResponse
        , DuplicateReportNameException
        , InternalErrorException
        , PutReportDefinitionResponse
        , ReportDefinition
        , ReportFormat(..)
        , ReportLimitReachedException
        , SchemaElement(..)
        , TimeUnit(..)
        , ValidationException
        )

{-| All public APIs for AWS Cost and Usage Report service

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [deleteReportDefinition](#deleteReportDefinition)
* [DeleteReportDefinitionOptions](#DeleteReportDefinitionOptions)
* [describeReportDefinitions](#describeReportDefinitions)
* [DescribeReportDefinitionsOptions](#DescribeReportDefinitionsOptions)
* [putReportDefinition](#putReportDefinition)


@docs deleteReportDefinition,DeleteReportDefinitionOptions,describeReportDefinitions,DescribeReportDefinitionsOptions,putReportDefinition

## Responses

* [DeleteReportDefinitionResponse](#DeleteReportDefinitionResponse)
* [DescribeReportDefinitionsResponse](#DescribeReportDefinitionsResponse)
* [PutReportDefinitionResponse](#PutReportDefinitionResponse)


@docs DeleteReportDefinitionResponse,DescribeReportDefinitionsResponse,PutReportDefinitionResponse

## Records

* [ReportDefinition](#ReportDefinition)


@docs ReportDefinition

## Unions

* [AWSRegion](#AWSRegion)
* [AdditionalArtifact](#AdditionalArtifact)
* [CompressionFormat](#CompressionFormat)
* [ReportFormat](#ReportFormat)
* [SchemaElement](#SchemaElement)
* [TimeUnit](#TimeUnit)


@docs AWSRegion,AdditionalArtifact,CompressionFormat,ReportFormat,SchemaElement,TimeUnit

## Exceptions

* [DuplicateReportNameException](#DuplicateReportNameException)
* [InternalErrorException](#InternalErrorException)
* [ReportLimitReachedException](#ReportLimitReachedException)
* [ValidationException](#ValidationException)


@docs DuplicateReportNameException,InternalErrorException,ReportLimitReachedException,ValidationException

-}

import AWS
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config creds =
    AWS.ServiceConfig
        "cur"
        "2017-01-06"
        "1.1"
        "AWSCUR_20170106."
        "cur.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| Delete a specified report definition

__Required Parameters__



-}
deleteReportDefinition :
    (DeleteReportDefinitionOptions -> DeleteReportDefinitionOptions)
    -> AWS.Http.UnsignedRequest DeleteReportDefinitionResponse
deleteReportDefinition setOptions =
  let
    options = setOptions (DeleteReportDefinitionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteReportDefinition"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteReportDefinitionResponseDecoder


{-| Options for a deleteReportDefinition request
-}
type alias DeleteReportDefinitionOptions =
    { reportName : Maybe String
    }



{-| Describe a list of report definitions owned by the account

__Required Parameters__



-}
describeReportDefinitions :
    (DescribeReportDefinitionsOptions -> DescribeReportDefinitionsOptions)
    -> AWS.Http.UnsignedRequest DescribeReportDefinitionsResponse
describeReportDefinitions setOptions =
  let
    options = setOptions (DescribeReportDefinitionsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeReportDefinitions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeReportDefinitionsResponseDecoder


{-| Options for a describeReportDefinitions request
-}
type alias DescribeReportDefinitionsOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| Create a new report definition

__Required Parameters__

* `reportDefinition` __:__ `ReportDefinition`


-}
putReportDefinition :
    ReportDefinition
    -> AWS.Http.UnsignedRequest PutReportDefinitionResponse
putReportDefinition reportDefinition =
    AWS.Http.unsignedRequest
        "PutReportDefinition"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putReportDefinitionResponseDecoder




{-| One of

* `AWSRegion_us-east-1`
* `AWSRegion_us-west-1`
* `AWSRegion_us-west-2`
* `AWSRegion_eu-central-1`
* `AWSRegion_eu-west-1`
* `AWSRegion_ap-southeast-1`
* `AWSRegion_ap-southeast-2`
* `AWSRegion_ap-northeast-1`

-}
type AWSRegion
    = AWSRegion_us_east_1
    | AWSRegion_us_west_1
    | AWSRegion_us_west_2
    | AWSRegion_eu_central_1
    | AWSRegion_eu_west_1
    | AWSRegion_ap_southeast_1
    | AWSRegion_ap_southeast_2
    | AWSRegion_ap_northeast_1



aWSRegionDecoder : JD.Decoder AWSRegion
aWSRegionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "us_east_1" ->
                        JD.succeed AWSRegion_us_east_1

                    "us_west_1" ->
                        JD.succeed AWSRegion_us_west_1

                    "us_west_2" ->
                        JD.succeed AWSRegion_us_west_2

                    "eu_central_1" ->
                        JD.succeed AWSRegion_eu_central_1

                    "eu_west_1" ->
                        JD.succeed AWSRegion_eu_west_1

                    "ap_southeast_1" ->
                        JD.succeed AWSRegion_ap_southeast_1

                    "ap_southeast_2" ->
                        JD.succeed AWSRegion_ap_southeast_2

                    "ap_northeast_1" ->
                        JD.succeed AWSRegion_ap_northeast_1


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `AdditionalArtifact_REDSHIFT`
* `AdditionalArtifact_QUICKSIGHT`

-}
type AdditionalArtifact
    = AdditionalArtifact_REDSHIFT
    | AdditionalArtifact_QUICKSIGHT



additionalArtifactDecoder : JD.Decoder AdditionalArtifact
additionalArtifactDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "REDSHIFT" ->
                        JD.succeed AdditionalArtifact_REDSHIFT

                    "QUICKSIGHT" ->
                        JD.succeed AdditionalArtifact_QUICKSIGHT


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `CompressionFormat_ZIP`
* `CompressionFormat_GZIP`

-}
type CompressionFormat
    = CompressionFormat_ZIP
    | CompressionFormat_GZIP



compressionFormatDecoder : JD.Decoder CompressionFormat
compressionFormatDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ZIP" ->
                        JD.succeed CompressionFormat_ZIP

                    "GZIP" ->
                        JD.succeed CompressionFormat_GZIP


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from deleteReportDefinition
-}
type alias DeleteReportDefinitionResponse =
    { responseMessage : Maybe String
    }



deleteReportDefinitionResponseDecoder : JD.Decoder DeleteReportDefinitionResponse
deleteReportDefinitionResponseDecoder =
    JDP.decode DeleteReportDefinitionResponse
        |> JDP.optional "responseMessage" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeReportDefinitions
-}
type alias DescribeReportDefinitionsResponse =
    { reportDefinitions : Maybe (List ReportDefinition)
    , nextToken : Maybe String
    }



describeReportDefinitionsResponseDecoder : JD.Decoder DescribeReportDefinitionsResponse
describeReportDefinitionsResponseDecoder =
    JDP.decode DescribeReportDefinitionsResponse
        |> JDP.optional "reportDefinitions" (JD.nullable (JD.list reportDefinitionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| This exception is thrown when putting a report preference with a name that already exists.
-}
type alias DuplicateReportNameException =
    { message : Maybe String
    }



duplicateReportNameExceptionDecoder : JD.Decoder DuplicateReportNameException
duplicateReportNameExceptionDecoder =
    JDP.decode DuplicateReportNameException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| This exception is thrown on a known dependency failure.
-}
type alias InternalErrorException =
    { message : Maybe String
    }



internalErrorExceptionDecoder : JD.Decoder InternalErrorException
internalErrorExceptionDecoder =
    JDP.decode InternalErrorException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from putReportDefinition
-}
type alias PutReportDefinitionResponse =
    { 
    }



putReportDefinitionResponseDecoder : JD.Decoder PutReportDefinitionResponse
putReportDefinitionResponseDecoder =
    JDP.decode PutReportDefinitionResponse



{-| The definition of AWS Cost and Usage Report. Customer can specify the report name, time unit, report format, compression format, S3 bucket and additional artifacts and schema elements in the definition.
-}
type alias ReportDefinition =
    { reportName : String
    , timeUnit : TimeUnit
    , format : ReportFormat
    , compression : CompressionFormat
    , additionalSchemaElements : (List SchemaElement)
    , s3Bucket : String
    , s3Prefix : String
    , s3Region : AWSRegion
    , additionalArtifacts : Maybe (List AdditionalArtifact)
    }



reportDefinitionDecoder : JD.Decoder ReportDefinition
reportDefinitionDecoder =
    JDP.decode ReportDefinition
        |> JDP.required "reportName" JD.string
        |> JDP.required "timeUnit" timeUnitDecoder
        |> JDP.required "format" reportFormatDecoder
        |> JDP.required "compression" compressionFormatDecoder
        |> JDP.required "additionalSchemaElements" (JD.list schemaElementDecoder)
        |> JDP.required "s3Bucket" JD.string
        |> JDP.required "s3Prefix" JD.string
        |> JDP.required "s3Region" aWSRegionDecoder
        |> JDP.optional "additionalArtifacts" (JD.nullable (JD.list additionalArtifactDecoder)) Nothing




{-| One of

* `ReportFormat_textORcsv`

-}
type ReportFormat
    = ReportFormat_textORcsv



reportFormatDecoder : JD.Decoder ReportFormat
reportFormatDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "textORcsv" ->
                        JD.succeed ReportFormat_textORcsv


                    _ ->
                        JD.fail "bad thing"
            )



{-| This exception is thrown when the number of report preference reaches max limit. The max number is 5.
-}
type alias ReportLimitReachedException =
    { message : Maybe String
    }



reportLimitReachedExceptionDecoder : JD.Decoder ReportLimitReachedException
reportLimitReachedExceptionDecoder =
    JDP.decode ReportLimitReachedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `SchemaElement_RESOURCES`

-}
type SchemaElement
    = SchemaElement_RESOURCES



schemaElementDecoder : JD.Decoder SchemaElement
schemaElementDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RESOURCES" ->
                        JD.succeed SchemaElement_RESOURCES


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `TimeUnit_HOURLY`
* `TimeUnit_DAILY`

-}
type TimeUnit
    = TimeUnit_HOURLY
    | TimeUnit_DAILY



timeUnitDecoder : JD.Decoder TimeUnit
timeUnitDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HOURLY" ->
                        JD.succeed TimeUnit_HOURLY

                    "DAILY" ->
                        JD.succeed TimeUnit_DAILY


                    _ ->
                        JD.fail "bad thing"
            )



{-| This exception is thrown when providing an invalid input. eg. Put a report preference with an invalid report name, or Delete a report preference with an empty report name.
-}
type alias ValidationException =
    { message : Maybe String
    }



validationExceptionDecoder : JD.Decoder ValidationException
validationExceptionDecoder =
    JDP.decode ValidationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




