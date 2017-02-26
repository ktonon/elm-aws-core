module AWS.Services.MarketplaceCommerceAnalytics
    exposing
        ( config
        , generateDataSet
        , GenerateDataSetOptions
        , startSupportDataExport
        , StartSupportDataExportOptions
        , DataSetType(..)
        , GenerateDataSetResult
        , MarketplaceCommerceAnalyticsException
        , StartSupportDataExportResult
        , SupportDataSetType(..)
        )

{-| Provides AWS Marketplace business intelligence data on-demand.

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [generateDataSet](#generateDataSet)
* [GenerateDataSetOptions](#GenerateDataSetOptions)
* [startSupportDataExport](#startSupportDataExport)
* [StartSupportDataExportOptions](#StartSupportDataExportOptions)


@docs generateDataSet,GenerateDataSetOptions,startSupportDataExport,StartSupportDataExportOptions

## Responses

* [GenerateDataSetResult](#GenerateDataSetResult)
* [StartSupportDataExportResult](#StartSupportDataExportResult)


@docs GenerateDataSetResult,StartSupportDataExportResult

## Unions

* [DataSetType](#DataSetType)
* [SupportDataSetType](#SupportDataSetType)


@docs DataSetType,SupportDataSetType

## Exceptions

* [MarketplaceCommerceAnalyticsException](#MarketplaceCommerceAnalyticsException)


@docs MarketplaceCommerceAnalyticsException

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
        "marketplacecommerceanalytics"
        "2015-07-01"
        "1.1"
        "AWSMARKETPLACECOMMERCEANALYTICS_20150701."
        "marketplacecommerceanalytics.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| Given a data set type and data set publication date, asynchronously publishes the requested data set to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.

__Required Parameters__

* `dataSetType` __:__ `DataSetType`
* `dataSetPublicationDate` __:__ `Date`
* `roleNameArn` __:__ `String`
* `destinationS3BucketName` __:__ `String`
* `snsTopicArn` __:__ `String`


-}
generateDataSet :
    DataSetType
    -> Date
    -> String
    -> String
    -> String
    -> (GenerateDataSetOptions -> GenerateDataSetOptions)
    -> AWS.Request GenerateDataSetResult
generateDataSet dataSetType dataSetPublicationDate roleNameArn destinationS3BucketName snsTopicArn setOptions =
  let
    options = setOptions (GenerateDataSetOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GenerateDataSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        generateDataSetResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a generateDataSet request
-}
type alias GenerateDataSetOptions =
    { destinationS3Prefix : Maybe String
    , customerDefinedValues : Maybe (Dict String String)
    }



{-| Given a data set type and a from date, asynchronously publishes the requested customer support data to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.

__Required Parameters__

* `dataSetType` __:__ `SupportDataSetType`
* `fromDate` __:__ `Date`
* `roleNameArn` __:__ `String`
* `destinationS3BucketName` __:__ `String`
* `snsTopicArn` __:__ `String`


-}
startSupportDataExport :
    SupportDataSetType
    -> Date
    -> String
    -> String
    -> String
    -> (StartSupportDataExportOptions -> StartSupportDataExportOptions)
    -> AWS.Request StartSupportDataExportResult
startSupportDataExport dataSetType fromDate roleNameArn destinationS3BucketName snsTopicArn setOptions =
  let
    options = setOptions (StartSupportDataExportOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "StartSupportDataExport"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startSupportDataExportResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a startSupportDataExport request
-}
type alias StartSupportDataExportOptions =
    { destinationS3Prefix : Maybe String
    , customerDefinedValues : Maybe (Dict String String)
    }




{-| One of

* `DataSetType_customer_subscriber_hourly_monthly_subscriptions`
* `DataSetType_customer_subscriber_annual_subscriptions`
* `DataSetType_daily_business_usage_by_instance_type`
* `DataSetType_daily_business_fees`
* `DataSetType_daily_business_free_trial_conversions`
* `DataSetType_daily_business_new_instances`
* `DataSetType_daily_business_new_product_subscribers`
* `DataSetType_daily_business_canceled_product_subscribers`
* `DataSetType_monthly_revenue_billing_and_revenue_data`
* `DataSetType_monthly_revenue_annual_subscriptions`
* `DataSetType_disbursed_amount_by_product`
* `DataSetType_disbursed_amount_by_product_with_uncollected_funds`
* `DataSetType_disbursed_amount_by_instance_hours`
* `DataSetType_disbursed_amount_by_customer_geo`
* `DataSetType_disbursed_amount_by_age_of_uncollected_funds`
* `DataSetType_disbursed_amount_by_age_of_disbursed_funds`
* `DataSetType_customer_profile_by_industry`
* `DataSetType_customer_profile_by_revenue`
* `DataSetType_customer_profile_by_geography`
* `DataSetType_sales_compensation_billed_revenue`

-}
type DataSetType
    = DataSetType_customer_subscriber_hourly_monthly_subscriptions
    | DataSetType_customer_subscriber_annual_subscriptions
    | DataSetType_daily_business_usage_by_instance_type
    | DataSetType_daily_business_fees
    | DataSetType_daily_business_free_trial_conversions
    | DataSetType_daily_business_new_instances
    | DataSetType_daily_business_new_product_subscribers
    | DataSetType_daily_business_canceled_product_subscribers
    | DataSetType_monthly_revenue_billing_and_revenue_data
    | DataSetType_monthly_revenue_annual_subscriptions
    | DataSetType_disbursed_amount_by_product
    | DataSetType_disbursed_amount_by_product_with_uncollected_funds
    | DataSetType_disbursed_amount_by_instance_hours
    | DataSetType_disbursed_amount_by_customer_geo
    | DataSetType_disbursed_amount_by_age_of_uncollected_funds
    | DataSetType_disbursed_amount_by_age_of_disbursed_funds
    | DataSetType_customer_profile_by_industry
    | DataSetType_customer_profile_by_revenue
    | DataSetType_customer_profile_by_geography
    | DataSetType_sales_compensation_billed_revenue



dataSetTypeDecoder : JD.Decoder DataSetType
dataSetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "customer_subscriber_hourly_monthly_subscriptions" ->
                        JD.succeed DataSetType_customer_subscriber_hourly_monthly_subscriptions

                    "customer_subscriber_annual_subscriptions" ->
                        JD.succeed DataSetType_customer_subscriber_annual_subscriptions

                    "daily_business_usage_by_instance_type" ->
                        JD.succeed DataSetType_daily_business_usage_by_instance_type

                    "daily_business_fees" ->
                        JD.succeed DataSetType_daily_business_fees

                    "daily_business_free_trial_conversions" ->
                        JD.succeed DataSetType_daily_business_free_trial_conversions

                    "daily_business_new_instances" ->
                        JD.succeed DataSetType_daily_business_new_instances

                    "daily_business_new_product_subscribers" ->
                        JD.succeed DataSetType_daily_business_new_product_subscribers

                    "daily_business_canceled_product_subscribers" ->
                        JD.succeed DataSetType_daily_business_canceled_product_subscribers

                    "monthly_revenue_billing_and_revenue_data" ->
                        JD.succeed DataSetType_monthly_revenue_billing_and_revenue_data

                    "monthly_revenue_annual_subscriptions" ->
                        JD.succeed DataSetType_monthly_revenue_annual_subscriptions

                    "disbursed_amount_by_product" ->
                        JD.succeed DataSetType_disbursed_amount_by_product

                    "disbursed_amount_by_product_with_uncollected_funds" ->
                        JD.succeed DataSetType_disbursed_amount_by_product_with_uncollected_funds

                    "disbursed_amount_by_instance_hours" ->
                        JD.succeed DataSetType_disbursed_amount_by_instance_hours

                    "disbursed_amount_by_customer_geo" ->
                        JD.succeed DataSetType_disbursed_amount_by_customer_geo

                    "disbursed_amount_by_age_of_uncollected_funds" ->
                        JD.succeed DataSetType_disbursed_amount_by_age_of_uncollected_funds

                    "disbursed_amount_by_age_of_disbursed_funds" ->
                        JD.succeed DataSetType_disbursed_amount_by_age_of_disbursed_funds

                    "customer_profile_by_industry" ->
                        JD.succeed DataSetType_customer_profile_by_industry

                    "customer_profile_by_revenue" ->
                        JD.succeed DataSetType_customer_profile_by_revenue

                    "customer_profile_by_geography" ->
                        JD.succeed DataSetType_customer_profile_by_geography

                    "sales_compensation_billed_revenue" ->
                        JD.succeed DataSetType_sales_compensation_billed_revenue


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from generateDataS
-}
type alias GenerateDataSetResult =
    { dataSetRequestId : Maybe String
    }



generateDataSetResultDecoder : JD.Decoder GenerateDataSetResult
generateDataSetResultDecoder =
    JDP.decode GenerateDataSetResult
        |> JDP.optional "dataSetRequestId" (JD.nullable JD.string) Nothing




{-| This exception is thrown when an internal service error occurs.
-}
type alias MarketplaceCommerceAnalyticsException =
    { message : Maybe String
    }



marketplaceCommerceAnalyticsExceptionDecoder : JD.Decoder MarketplaceCommerceAnalyticsException
marketplaceCommerceAnalyticsExceptionDecoder =
    JDP.decode MarketplaceCommerceAnalyticsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from startSupportDataExpo
-}
type alias StartSupportDataExportResult =
    { dataSetRequestId : Maybe String
    }



startSupportDataExportResultDecoder : JD.Decoder StartSupportDataExportResult
startSupportDataExportResultDecoder =
    JDP.decode StartSupportDataExportResult
        |> JDP.optional "dataSetRequestId" (JD.nullable JD.string) Nothing




{-| One of

* `SupportDataSetType_customer_support_contacts_data`
* `SupportDataSetType_test_customer_support_contacts_data`

-}
type SupportDataSetType
    = SupportDataSetType_customer_support_contacts_data
    | SupportDataSetType_test_customer_support_contacts_data



supportDataSetTypeDecoder : JD.Decoder SupportDataSetType
supportDataSetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "customer_support_contacts_data" ->
                        JD.succeed SupportDataSetType_customer_support_contacts_data

                    "test_customer_support_contacts_data" ->
                        JD.succeed SupportDataSetType_test_customer_support_contacts_data


                    _ ->
                        JD.fail "bad thing"
            )



