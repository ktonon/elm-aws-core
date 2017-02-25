module AWS.Services.MarketplaceMetering
    exposing
        ( config
        , batchMeterUsage
        , meterUsage
        , resolveCustomer
        , BatchMeterUsageResult
        , DuplicateRequestException
        , ExpiredTokenException
        , InternalServiceErrorException
        , InvalidCustomerIdentifierException
        , InvalidEndpointRegionException
        , InvalidProductCodeException
        , InvalidTokenException
        , InvalidUsageDimensionException
        , MeterUsageResult
        , ResolveCustomerResult
        , ThrottlingException
        , TimestampOutOfBoundsException
        , UsageRecord
        , UsageRecordResult
        , UsageRecordResultStatus(..)
        )

{-| <fullname>AWS Marketplace Metering Service</fullname> <p>This reference provides descriptions of the low-level AWS Marketplace Metering Service API.</p> <p>AWS Marketplace sellers can use this API to submit usage data for custom usage dimensions.</p> <p> <b>Submitting Metering Records</b> </p> <ul> <li> <p> <i>MeterUsage</i>- Submits the metering record for a Marketplace product. MeterUsage is called from an EC2 instance.</p> </li> <li> <p> <i>BatchMeterUsage</i>- Submits the metering record for a set of customers. BatchMeterUsage is called from a software-as-a-service (SaaS) application.</p> </li> </ul> <p> <b>Accepting New Customers</b> </p> <ul> <li> <p> <i>ResolveCustomer</i>- Called by a SaaS application during the registration process. When a buyer visits your website during the registration process, the buyer submits a Registration Token through the browser. The Registration Token is resolved through this API to obtain a CustomerIdentifier and Product Code.</p> </li> </ul>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [batchMeterUsage](#batchMeterUsage)
* [meterUsage](#meterUsage)
* [resolveCustomer](#resolveCustomer)


@docs batchMeterUsage,meterUsage,resolveCustomer

## Responses

* [BatchMeterUsageResult](#BatchMeterUsageResult)
* [MeterUsageResult](#MeterUsageResult)
* [ResolveCustomerResult](#ResolveCustomerResult)


@docs BatchMeterUsageResult,MeterUsageResult,ResolveCustomerResult

## Records

* [UsageRecord](#UsageRecord)
* [UsageRecordResult](#UsageRecordResult)


@docs UsageRecord,UsageRecordResult

## Unions

* [UsageRecordResultStatus](#UsageRecordResultStatus)


@docs UsageRecordResultStatus

## Exceptions

* [DuplicateRequestException](#DuplicateRequestException)
* [ExpiredTokenException](#ExpiredTokenException)
* [InternalServiceErrorException](#InternalServiceErrorException)
* [InvalidCustomerIdentifierException](#InvalidCustomerIdentifierException)
* [InvalidEndpointRegionException](#InvalidEndpointRegionException)
* [InvalidProductCodeException](#InvalidProductCodeException)
* [InvalidTokenException](#InvalidTokenException)
* [InvalidUsageDimensionException](#InvalidUsageDimensionException)
* [ThrottlingException](#ThrottlingException)
* [TimestampOutOfBoundsException](#TimestampOutOfBoundsException)


@docs DuplicateRequestException,ExpiredTokenException,InternalServiceErrorException,InvalidCustomerIdentifierException,InvalidEndpointRegionException,InvalidProductCodeException,InvalidTokenException,InvalidUsageDimensionException,ThrottlingException,TimestampOutOfBoundsException

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


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config maybeCreds =
    AWS.Config.Service
        "metering.marketplace"
        "2016-01-14"
        "1.1"
        "AWSMETERING.MARKETPLACE_20160114."
        "metering.marketplace.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>BatchMeterUsage is called from a SaaS application listed on the AWS Marketplace to post metering records for a set of customers.</p> <p>For identical requests, the API is idempotent; requests can be retried with the same records or a subset of the input records.</p> <p>Every request to BatchMeterUsage is for one product. If you need to meter usage for multiple products, you must make multiple calls to BatchMeterUsage.</p> <p>BatchMeterUsage can process up to 25 UsageRecords at a time.</p>

__Required Parameters__

* `usageRecords` __:__ `(List UsageRecord)`
* `productCode` __:__ `String`


-}
batchMeterUsage :
    (List UsageRecord)
    -> String
    -> AWS.Request BatchMeterUsageResult
batchMeterUsage usageRecords productCode =
    AWS.Http.unsignedRequest
        "BatchMeterUsage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        batchMeterUsageResultDecoder
        |> AWS.UnsignedRequest



{-| <p>API to emit metering records. For identical requests, the API is idempotent. It simply returns the metering record ID.</p> <p>MeterUsage is authenticated on the buyer's AWS account, generally when running from an EC2 instance on the AWS Marketplace.</p>

__Required Parameters__

* `productCode` __:__ `String`
* `timestamp` __:__ `Date`
* `usageDimension` __:__ `String`
* `usageQuantity` __:__ `Int`
* `dryRun` __:__ `Bool`


-}
meterUsage :
    String
    -> Date
    -> String
    -> Int
    -> Bool
    -> AWS.Request MeterUsageResult
meterUsage productCode timestamp usageDimension usageQuantity dryRun =
    AWS.Http.unsignedRequest
        "MeterUsage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        meterUsageResultDecoder
        |> AWS.UnsignedRequest



{-| <p>ResolveCustomer is called by a SaaS application during the registration process. When a buyer visits your website during the registration process, the buyer submits a registration token through their browser. The registration token is resolved through this API to obtain a CustomerIdentifier and product code.</p>

__Required Parameters__

* `registrationToken` __:__ `String`


-}
resolveCustomer :
    String
    -> AWS.Request ResolveCustomerResult
resolveCustomer registrationToken =
    AWS.Http.unsignedRequest
        "ResolveCustomer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        resolveCustomerResultDecoder
        |> AWS.UnsignedRequest




{-| Type of HTTP response from batchMeterUsa
-}
type alias BatchMeterUsageResult =
    { results : Maybe (List UsageRecordResult)
    , unprocessedRecords : Maybe (List UsageRecord)
    }



batchMeterUsageResultDecoder : JD.Decoder BatchMeterUsageResult
batchMeterUsageResultDecoder =
    JDP.decode BatchMeterUsageResult
        |> JDP.optional "results" (JD.nullable (JD.list usageRecordResultDecoder)) Nothing
        |> JDP.optional "unprocessedRecords" (JD.nullable (JD.list usageRecordDecoder)) Nothing




{-| <p>A metering record has already been emitted by the same EC2 instance for the given {usageDimension, timestamp} with a different usageQuantity.</p>
-}
type alias DuplicateRequestException =
    { message : Maybe String
    }



duplicateRequestExceptionDecoder : JD.Decoder DuplicateRequestException
duplicateRequestExceptionDecoder =
    JDP.decode DuplicateRequestException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The submitted registration token has expired. This can happen if the buyer's browser takes too long to redirect to your page, the buyer has resubmitted the registration token, or your application has held on to the registration token for too long. Your SaaS registration website should redeem this token as soon as it is submitted by the buyer's browser.</p>
-}
type alias ExpiredTokenException =
    { message : Maybe String
    }



expiredTokenExceptionDecoder : JD.Decoder ExpiredTokenException
expiredTokenExceptionDecoder =
    JDP.decode ExpiredTokenException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>An internal error has occurred. Retry your request. If the problem persists, post a message with details on the AWS forums.</p>
-}
type alias InternalServiceErrorException =
    { message : Maybe String
    }



internalServiceErrorExceptionDecoder : JD.Decoder InternalServiceErrorException
internalServiceErrorExceptionDecoder =
    JDP.decode InternalServiceErrorException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You have metered usage for a CustomerIdentifier that does not exist.</p>
-}
type alias InvalidCustomerIdentifierException =
    { message : Maybe String
    }



invalidCustomerIdentifierExceptionDecoder : JD.Decoder InvalidCustomerIdentifierException
invalidCustomerIdentifierExceptionDecoder =
    JDP.decode InvalidCustomerIdentifierException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The endpoint being called is in a region different from your EC2 instance. The region of the Metering service endpoint and the region of the EC2 instance must match.</p>
-}
type alias InvalidEndpointRegionException =
    { message : Maybe String
    }



invalidEndpointRegionExceptionDecoder : JD.Decoder InvalidEndpointRegionException
invalidEndpointRegionExceptionDecoder =
    JDP.decode InvalidEndpointRegionException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The product code passed does not match the product code used for publishing the product.</p>
-}
type alias InvalidProductCodeException =
    { message : Maybe String
    }



invalidProductCodeExceptionDecoder : JD.Decoder InvalidProductCodeException
invalidProductCodeExceptionDecoder =
    JDP.decode InvalidProductCodeException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias InvalidTokenException =
    { message : Maybe String
    }



invalidTokenExceptionDecoder : JD.Decoder InvalidTokenException
invalidTokenExceptionDecoder =
    JDP.decode InvalidTokenException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The usage dimension does not match one of the UsageDimensions associated with products.</p>
-}
type alias InvalidUsageDimensionException =
    { message : Maybe String
    }



invalidUsageDimensionExceptionDecoder : JD.Decoder InvalidUsageDimensionException
invalidUsageDimensionExceptionDecoder =
    JDP.decode InvalidUsageDimensionException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from meterUsa
-}
type alias MeterUsageResult =
    { meteringRecordId : Maybe String
    }



meterUsageResultDecoder : JD.Decoder MeterUsageResult
meterUsageResultDecoder =
    JDP.decode MeterUsageResult
        |> JDP.optional "meteringRecordId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from resolveCustom
-}
type alias ResolveCustomerResult =
    { customerIdentifier : Maybe String
    , productCode : Maybe String
    }



resolveCustomerResultDecoder : JD.Decoder ResolveCustomerResult
resolveCustomerResultDecoder =
    JDP.decode ResolveCustomerResult
        |> JDP.optional "customerIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "productCode" (JD.nullable JD.string) Nothing




{-| <p>The calls to the MeterUsage API are throttled.</p>
-}
type alias ThrottlingException =
    { message : Maybe String
    }



throttlingExceptionDecoder : JD.Decoder ThrottlingException
throttlingExceptionDecoder =
    JDP.decode ThrottlingException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The timestamp value passed in the meterUsage() is out of allowed range.</p>
-}
type alias TimestampOutOfBoundsException =
    { message : Maybe String
    }



timestampOutOfBoundsExceptionDecoder : JD.Decoder TimestampOutOfBoundsException
timestampOutOfBoundsExceptionDecoder =
    JDP.decode TimestampOutOfBoundsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A UsageRecord indicates a quantity of usage for a given product, customer, dimension and time.</p> <p>Multiple requests with the same UsageRecords as input will be deduplicated to prevent double charges.</p>
-}
type alias UsageRecord =
    { timestamp : Date
    , customerIdentifier : String
    , dimension : String
    , quantity : Int
    }



usageRecordDecoder : JD.Decoder UsageRecord
usageRecordDecoder =
    JDP.decode UsageRecord
        |> JDP.required "timestamp" JDX.date
        |> JDP.required "customerIdentifier" JD.string
        |> JDP.required "dimension" JD.string
        |> JDP.required "quantity" JD.int




{-| <p>A UsageRecordResult indicates the status of a given UsageRecord processed by BatchMeterUsage.</p>
-}
type alias UsageRecordResult =
    { usageRecord : Maybe UsageRecord
    , meteringRecordId : Maybe String
    , status : Maybe UsageRecordResultStatus
    }



usageRecordResultDecoder : JD.Decoder UsageRecordResult
usageRecordResultDecoder =
    JDP.decode UsageRecordResult
        |> JDP.optional "usageRecord" (JD.nullable usageRecordDecoder) Nothing
        |> JDP.optional "meteringRecordId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable usageRecordResultStatusDecoder) Nothing




{-| One of

* `UsageRecordResultStatus_Success`
* `UsageRecordResultStatus_CustomerNotSubscribed`
* `UsageRecordResultStatus_DuplicateRecord`

-}
type UsageRecordResultStatus
    = UsageRecordResultStatus_Success
    | UsageRecordResultStatus_CustomerNotSubscribed
    | UsageRecordResultStatus_DuplicateRecord



usageRecordResultStatusDecoder : JD.Decoder UsageRecordResultStatus
usageRecordResultStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Success" ->
                        JD.succeed UsageRecordResultStatus_Success

                    "CustomerNotSubscribed" ->
                        JD.succeed UsageRecordResultStatus_CustomerNotSubscribed

                    "DuplicateRecord" ->
                        JD.succeed UsageRecordResultStatus_DuplicateRecord


                    _ ->
                        JD.fail "bad thing"
            )



