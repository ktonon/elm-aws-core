module AWS.Services.Budgets
    exposing
        ( config
        , createBudget
        , CreateBudgetOptions
        , createNotification
        , createSubscriber
        , deleteBudget
        , deleteNotification
        , deleteSubscriber
        , describeBudget
        , describeBudgets
        , DescribeBudgetsOptions
        , describeNotificationsForBudget
        , DescribeNotificationsForBudgetOptions
        , describeSubscribersForNotification
        , DescribeSubscribersForNotificationOptions
        , updateBudget
        , updateNotification
        , updateSubscriber
        , Budget
        , BudgetType(..)
        , CalculatedSpend
        , ComparisonOperator(..)
        , CostTypes
        , CreateBudgetResponse
        , CreateNotificationResponse
        , CreateSubscriberResponse
        , CreationLimitExceededException
        , DeleteBudgetResponse
        , DeleteNotificationResponse
        , DeleteSubscriberResponse
        , DescribeBudgetResponse
        , DescribeBudgetsResponse
        , DescribeNotificationsForBudgetResponse
        , DescribeSubscribersForNotificationResponse
        , DuplicateRecordException
        , ExpiredNextTokenException
        , InternalErrorException
        , InvalidNextTokenException
        , InvalidParameterException
        , NotFoundException
        , Notification
        , NotificationType(..)
        , NotificationWithSubscribers
        , Spend
        , Subscriber
        , SubscriptionType(..)
        , TimePeriod
        , TimeUnit(..)
        , UpdateBudgetResponse
        , UpdateNotificationResponse
        , UpdateSubscriberResponse
        )

{-| All public APIs for AWS Budgets

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [createBudget](#createBudget)
* [CreateBudgetOptions](#CreateBudgetOptions)
* [createNotification](#createNotification)
* [createSubscriber](#createSubscriber)
* [deleteBudget](#deleteBudget)
* [deleteNotification](#deleteNotification)
* [deleteSubscriber](#deleteSubscriber)
* [describeBudget](#describeBudget)
* [describeBudgets](#describeBudgets)
* [DescribeBudgetsOptions](#DescribeBudgetsOptions)
* [describeNotificationsForBudget](#describeNotificationsForBudget)
* [DescribeNotificationsForBudgetOptions](#DescribeNotificationsForBudgetOptions)
* [describeSubscribersForNotification](#describeSubscribersForNotification)
* [DescribeSubscribersForNotificationOptions](#DescribeSubscribersForNotificationOptions)
* [updateBudget](#updateBudget)
* [updateNotification](#updateNotification)
* [updateSubscriber](#updateSubscriber)


@docs createBudget,CreateBudgetOptions,createNotification,createSubscriber,deleteBudget,deleteNotification,deleteSubscriber,describeBudget,describeBudgets,DescribeBudgetsOptions,describeNotificationsForBudget,DescribeNotificationsForBudgetOptions,describeSubscribersForNotification,DescribeSubscribersForNotificationOptions,updateBudget,updateNotification,updateSubscriber

## Responses

* [CreateBudgetResponse](#CreateBudgetResponse)
* [CreateNotificationResponse](#CreateNotificationResponse)
* [CreateSubscriberResponse](#CreateSubscriberResponse)
* [DeleteBudgetResponse](#DeleteBudgetResponse)
* [DeleteNotificationResponse](#DeleteNotificationResponse)
* [DeleteSubscriberResponse](#DeleteSubscriberResponse)
* [DescribeBudgetResponse](#DescribeBudgetResponse)
* [DescribeBudgetsResponse](#DescribeBudgetsResponse)
* [DescribeNotificationsForBudgetResponse](#DescribeNotificationsForBudgetResponse)
* [DescribeSubscribersForNotificationResponse](#DescribeSubscribersForNotificationResponse)
* [UpdateBudgetResponse](#UpdateBudgetResponse)
* [UpdateNotificationResponse](#UpdateNotificationResponse)
* [UpdateSubscriberResponse](#UpdateSubscriberResponse)


@docs CreateBudgetResponse,CreateNotificationResponse,CreateSubscriberResponse,DeleteBudgetResponse,DeleteNotificationResponse,DeleteSubscriberResponse,DescribeBudgetResponse,DescribeBudgetsResponse,DescribeNotificationsForBudgetResponse,DescribeSubscribersForNotificationResponse,UpdateBudgetResponse,UpdateNotificationResponse,UpdateSubscriberResponse

## Records

* [Budget](#Budget)
* [CalculatedSpend](#CalculatedSpend)
* [CostTypes](#CostTypes)
* [Notification](#Notification)
* [NotificationWithSubscribers](#NotificationWithSubscribers)
* [Spend](#Spend)
* [Subscriber](#Subscriber)
* [TimePeriod](#TimePeriod)


@docs Budget,CalculatedSpend,CostTypes,Notification,NotificationWithSubscribers,Spend,Subscriber,TimePeriod

## Unions

* [BudgetType](#BudgetType)
* [ComparisonOperator](#ComparisonOperator)
* [NotificationType](#NotificationType)
* [SubscriptionType](#SubscriptionType)
* [TimeUnit](#TimeUnit)


@docs BudgetType,ComparisonOperator,NotificationType,SubscriptionType,TimeUnit

## Exceptions

* [CreationLimitExceededException](#CreationLimitExceededException)
* [DuplicateRecordException](#DuplicateRecordException)
* [ExpiredNextTokenException](#ExpiredNextTokenException)
* [InternalErrorException](#InternalErrorException)
* [InvalidNextTokenException](#InvalidNextTokenException)
* [InvalidParameterException](#InvalidParameterException)
* [NotFoundException](#NotFoundException)


@docs CreationLimitExceededException,DuplicateRecordException,ExpiredNextTokenException,InternalErrorException,InvalidNextTokenException,InvalidParameterException,NotFoundException

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
        "budgets"
        "2016-10-20"
        "1.1"
        "AWSBUDGETS_20161020."
        "budgets.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| Create a new budget

__Required Parameters__

* `accountId` __:__ `String`
* `budget` __:__ `Budget`


-}
createBudget :
    String
    -> Budget
    -> (CreateBudgetOptions -> CreateBudgetOptions)
    -> AWS.Request CreateBudgetResponse
createBudget accountId budget setOptions =
  let
    options = setOptions (CreateBudgetOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateBudget"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createBudgetResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createBudget request
-}
type alias CreateBudgetOptions =
    { notificationsWithSubscribers : Maybe (List NotificationWithSubscribers)
    }



{-| Create a new Notification with subscribers for a budget

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`
* `notification` __:__ `Notification`
* `subscribers` __:__ `(List Subscriber)`


-}
createNotification :
    String
    -> String
    -> Notification
    -> (List Subscriber)
    -> AWS.Request CreateNotificationResponse
createNotification accountId budgetName notification subscribers =
    AWS.Http.unsignedRequest
        "CreateNotification"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createNotificationResponseDecoder
        |> AWS.UnsignedRequest



{-| Create a new Subscriber for a notification

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`
* `notification` __:__ `Notification`
* `subscriber` __:__ `Subscriber`


-}
createSubscriber :
    String
    -> String
    -> Notification
    -> Subscriber
    -> AWS.Request CreateSubscriberResponse
createSubscriber accountId budgetName notification subscriber =
    AWS.Http.unsignedRequest
        "CreateSubscriber"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createSubscriberResponseDecoder
        |> AWS.UnsignedRequest



{-| Delete a budget and related notifications

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`


-}
deleteBudget :
    String
    -> String
    -> AWS.Request DeleteBudgetResponse
deleteBudget accountId budgetName =
    AWS.Http.unsignedRequest
        "DeleteBudget"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteBudgetResponseDecoder
        |> AWS.UnsignedRequest



{-| Delete a notification and related subscribers

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`
* `notification` __:__ `Notification`


-}
deleteNotification :
    String
    -> String
    -> Notification
    -> AWS.Request DeleteNotificationResponse
deleteNotification accountId budgetName notification =
    AWS.Http.unsignedRequest
        "DeleteNotification"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteNotificationResponseDecoder
        |> AWS.UnsignedRequest



{-| Delete a Subscriber for a notification

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`
* `notification` __:__ `Notification`
* `subscriber` __:__ `Subscriber`


-}
deleteSubscriber :
    String
    -> String
    -> Notification
    -> Subscriber
    -> AWS.Request DeleteSubscriberResponse
deleteSubscriber accountId budgetName notification subscriber =
    AWS.Http.unsignedRequest
        "DeleteSubscriber"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteSubscriberResponseDecoder
        |> AWS.UnsignedRequest



{-| Get a single budget

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`


-}
describeBudget :
    String
    -> String
    -> AWS.Request DescribeBudgetResponse
describeBudget accountId budgetName =
    AWS.Http.unsignedRequest
        "DescribeBudget"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeBudgetResponseDecoder
        |> AWS.UnsignedRequest



{-| Get all budgets for an account

__Required Parameters__

* `accountId` __:__ `String`


-}
describeBudgets :
    String
    -> (DescribeBudgetsOptions -> DescribeBudgetsOptions)
    -> AWS.Request DescribeBudgetsResponse
describeBudgets accountId setOptions =
  let
    options = setOptions (DescribeBudgetsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeBudgets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeBudgetsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeBudgets request
-}
type alias DescribeBudgetsOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| Get notifications of a budget

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`


-}
describeNotificationsForBudget :
    String
    -> String
    -> (DescribeNotificationsForBudgetOptions -> DescribeNotificationsForBudgetOptions)
    -> AWS.Request DescribeNotificationsForBudgetResponse
describeNotificationsForBudget accountId budgetName setOptions =
  let
    options = setOptions (DescribeNotificationsForBudgetOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeNotificationsForBudget"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeNotificationsForBudgetResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeNotificationsForBudget request
-}
type alias DescribeNotificationsForBudgetOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| Get subscribers of a notification

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`
* `notification` __:__ `Notification`


-}
describeSubscribersForNotification :
    String
    -> String
    -> Notification
    -> (DescribeSubscribersForNotificationOptions -> DescribeSubscribersForNotificationOptions)
    -> AWS.Request DescribeSubscribersForNotificationResponse
describeSubscribersForNotification accountId budgetName notification setOptions =
  let
    options = setOptions (DescribeSubscribersForNotificationOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSubscribersForNotification"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSubscribersForNotificationResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSubscribersForNotification request
-}
type alias DescribeSubscribersForNotificationOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| Update the information of a budget already created

__Required Parameters__

* `accountId` __:__ `String`
* `newBudget` __:__ `Budget`


-}
updateBudget :
    String
    -> Budget
    -> AWS.Request UpdateBudgetResponse
updateBudget accountId newBudget =
    AWS.Http.unsignedRequest
        "UpdateBudget"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateBudgetResponseDecoder
        |> AWS.UnsignedRequest



{-| Update the information about a notification already created

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`
* `oldNotification` __:__ `Notification`
* `newNotification` __:__ `Notification`


-}
updateNotification :
    String
    -> String
    -> Notification
    -> Notification
    -> AWS.Request UpdateNotificationResponse
updateNotification accountId budgetName oldNotification newNotification =
    AWS.Http.unsignedRequest
        "UpdateNotification"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateNotificationResponseDecoder
        |> AWS.UnsignedRequest



{-| Update a subscriber

__Required Parameters__

* `accountId` __:__ `String`
* `budgetName` __:__ `String`
* `notification` __:__ `Notification`
* `oldSubscriber` __:__ `Subscriber`
* `newSubscriber` __:__ `Subscriber`


-}
updateSubscriber :
    String
    -> String
    -> Notification
    -> Subscriber
    -> Subscriber
    -> AWS.Request UpdateSubscriberResponse
updateSubscriber accountId budgetName notification oldSubscriber newSubscriber =
    AWS.Http.unsignedRequest
        "UpdateSubscriber"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateSubscriberResponseDecoder
        |> AWS.UnsignedRequest




{-| AWS Budget model
-}
type alias Budget =
    { budgetName : String
    , budgetLimit : Spend
    , costFilters : Maybe (Dict String (List String))
    , costTypes : CostTypes
    , timeUnit : TimeUnit
    , timePeriod : TimePeriod
    , calculatedSpend : Maybe CalculatedSpend
    , budgetType : BudgetType
    }



budgetDecoder : JD.Decoder Budget
budgetDecoder =
    JDP.decode Budget
        |> JDP.required "budgetName" JD.string
        |> JDP.required "budgetLimit" spendDecoder
        |> JDP.optional "costFilters" (JD.nullable (JD.dict (JD.list JD.string))) Nothing
        |> JDP.required "costTypes" costTypesDecoder
        |> JDP.required "timeUnit" timeUnitDecoder
        |> JDP.required "timePeriod" timePeriodDecoder
        |> JDP.optional "calculatedSpend" (JD.nullable calculatedSpendDecoder) Nothing
        |> JDP.required "budgetType" budgetTypeDecoder




{-| One of

* `BudgetType_USAGE`
* `BudgetType_COST`

-}
type BudgetType
    = BudgetType_USAGE
    | BudgetType_COST



budgetTypeDecoder : JD.Decoder BudgetType
budgetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "USAGE" ->
                        JD.succeed BudgetType_USAGE

                    "COST" ->
                        JD.succeed BudgetType_COST


                    _ ->
                        JD.fail "bad thing"
            )



{-| A structure holds the actual and forecasted spend for a budget.
-}
type alias CalculatedSpend =
    { actualSpend : Spend
    , forecastedSpend : Maybe Spend
    }



calculatedSpendDecoder : JD.Decoder CalculatedSpend
calculatedSpendDecoder =
    JDP.decode CalculatedSpend
        |> JDP.required "actualSpend" spendDecoder
        |> JDP.optional "forecastedSpend" (JD.nullable spendDecoder) Nothing




{-| One of

* `ComparisonOperator_GREATER_THAN`
* `ComparisonOperator_LESS_THAN`
* `ComparisonOperator_EQUAL_TO`

-}
type ComparisonOperator
    = ComparisonOperator_GREATER_THAN
    | ComparisonOperator_LESS_THAN
    | ComparisonOperator_EQUAL_TO



comparisonOperatorDecoder : JD.Decoder ComparisonOperator
comparisonOperatorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "GREATER_THAN" ->
                        JD.succeed ComparisonOperator_GREATER_THAN

                    "LESS_THAN" ->
                        JD.succeed ComparisonOperator_LESS_THAN

                    "EQUAL_TO" ->
                        JD.succeed ComparisonOperator_EQUAL_TO


                    _ ->
                        JD.fail "bad thing"
            )



{-| This includes the options for getting the cost of a budget.
-}
type alias CostTypes =
    { includeTax : Bool
    , includeSubscription : Bool
    , useBlended : Bool
    }



costTypesDecoder : JD.Decoder CostTypes
costTypesDecoder =
    JDP.decode CostTypes
        |> JDP.required "includeTax" JD.bool
        |> JDP.required "includeSubscription" JD.bool
        |> JDP.required "useBlended" JD.bool




{-| Type of HTTP response from createBudget
-}
type alias CreateBudgetResponse =
    { 
    }



createBudgetResponseDecoder : JD.Decoder CreateBudgetResponse
createBudgetResponseDecoder =
    JDP.decode CreateBudgetResponse



{-| Type of HTTP response from createNotification
-}
type alias CreateNotificationResponse =
    { 
    }



createNotificationResponseDecoder : JD.Decoder CreateNotificationResponse
createNotificationResponseDecoder =
    JDP.decode CreateNotificationResponse



{-| Type of HTTP response from createSubscriber
-}
type alias CreateSubscriberResponse =
    { 
    }



createSubscriberResponseDecoder : JD.Decoder CreateSubscriberResponse
createSubscriberResponseDecoder =
    JDP.decode CreateSubscriberResponse



{-| The exception is thrown when customer tries to create a record (e.g. budget), but the number this record already exceeds the limitation.
-}
type alias CreationLimitExceededException =
    { message : Maybe String
    }



creationLimitExceededExceptionDecoder : JD.Decoder CreationLimitExceededException
creationLimitExceededExceptionDecoder =
    JDP.decode CreationLimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteBudget
-}
type alias DeleteBudgetResponse =
    { 
    }



deleteBudgetResponseDecoder : JD.Decoder DeleteBudgetResponse
deleteBudgetResponseDecoder =
    JDP.decode DeleteBudgetResponse



{-| Type of HTTP response from deleteNotification
-}
type alias DeleteNotificationResponse =
    { 
    }



deleteNotificationResponseDecoder : JD.Decoder DeleteNotificationResponse
deleteNotificationResponseDecoder =
    JDP.decode DeleteNotificationResponse



{-| Type of HTTP response from deleteSubscriber
-}
type alias DeleteSubscriberResponse =
    { 
    }



deleteSubscriberResponseDecoder : JD.Decoder DeleteSubscriberResponse
deleteSubscriberResponseDecoder =
    JDP.decode DeleteSubscriberResponse



{-| Type of HTTP response from describeBudget
-}
type alias DescribeBudgetResponse =
    { budget : Maybe Budget
    }



describeBudgetResponseDecoder : JD.Decoder DescribeBudgetResponse
describeBudgetResponseDecoder =
    JDP.decode DescribeBudgetResponse
        |> JDP.optional "budget" (JD.nullable budgetDecoder) Nothing




{-| Type of HTTP response from describeBudgets
-}
type alias DescribeBudgetsResponse =
    { budgets : Maybe (List Budget)
    , nextToken : Maybe String
    }



describeBudgetsResponseDecoder : JD.Decoder DescribeBudgetsResponse
describeBudgetsResponseDecoder =
    JDP.decode DescribeBudgetsResponse
        |> JDP.optional "budgets" (JD.nullable (JD.list budgetDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeNotificationsForBudget
-}
type alias DescribeNotificationsForBudgetResponse =
    { notifications : Maybe (List Notification)
    , nextToken : Maybe String
    }



describeNotificationsForBudgetResponseDecoder : JD.Decoder DescribeNotificationsForBudgetResponse
describeNotificationsForBudgetResponseDecoder =
    JDP.decode DescribeNotificationsForBudgetResponse
        |> JDP.optional "notifications" (JD.nullable (JD.list notificationDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeSubscribersForNotification
-}
type alias DescribeSubscribersForNotificationResponse =
    { subscribers : Maybe (List Subscriber)
    , nextToken : Maybe String
    }



describeSubscribersForNotificationResponseDecoder : JD.Decoder DescribeSubscribersForNotificationResponse
describeSubscribersForNotificationResponseDecoder =
    JDP.decode DescribeSubscribersForNotificationResponse
        |> JDP.optional "subscribers" (JD.nullable (JD.list subscriberDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| The exception is thrown when customer tries to create a record (e.g. budget) that already exists.
-}
type alias DuplicateRecordException =
    { message : Maybe String
    }



duplicateRecordExceptionDecoder : JD.Decoder DuplicateRecordException
duplicateRecordExceptionDecoder =
    JDP.decode DuplicateRecordException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| This exception is thrown if the paging token is expired - past its TTL
-}
type alias ExpiredNextTokenException =
    { message : Maybe String
    }



expiredNextTokenExceptionDecoder : JD.Decoder ExpiredNextTokenException
expiredNextTokenExceptionDecoder =
    JDP.decode ExpiredNextTokenException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| This exception is thrown on an unknown internal failure.
-}
type alias InternalErrorException =
    { message : Maybe String
    }



internalErrorExceptionDecoder : JD.Decoder InternalErrorException
internalErrorExceptionDecoder =
    JDP.decode InternalErrorException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| This exception is thrown if paging token signature didn't match the token, or the paging token isn't for this request
-}
type alias InvalidNextTokenException =
    { message : Maybe String
    }



invalidNextTokenExceptionDecoder : JD.Decoder InvalidNextTokenException
invalidNextTokenExceptionDecoder =
    JDP.decode InvalidNextTokenException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| This exception is thrown if any request is given an invalid parameter. E.g., if a required Date field is null.
-}
type alias InvalidParameterException =
    { message : Maybe String
    }



invalidParameterExceptionDecoder : JD.Decoder InvalidParameterException
invalidParameterExceptionDecoder =
    JDP.decode InvalidParameterException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| This exception is thrown if a requested entity is not found. E.g., if a budget id doesn't exist for an account ID.
-}
type alias NotFoundException =
    { message : Maybe String
    }



notFoundExceptionDecoder : JD.Decoder NotFoundException
notFoundExceptionDecoder =
    JDP.decode NotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Notification model. Each budget may contain multiple notifications with different settings.
-}
type alias Notification =
    { notificationType : NotificationType
    , comparisonOperator : ComparisonOperator
    , threshold : Float
    }



notificationDecoder : JD.Decoder Notification
notificationDecoder =
    JDP.decode Notification
        |> JDP.required "notificationType" notificationTypeDecoder
        |> JDP.required "comparisonOperator" comparisonOperatorDecoder
        |> JDP.required "threshold" JD.float




{-| One of

* `NotificationType_ACTUAL`
* `NotificationType_FORECASTED`

-}
type NotificationType
    = NotificationType_ACTUAL
    | NotificationType_FORECASTED



notificationTypeDecoder : JD.Decoder NotificationType
notificationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTUAL" ->
                        JD.succeed NotificationType_ACTUAL

                    "FORECASTED" ->
                        JD.succeed NotificationType_FORECASTED


                    _ ->
                        JD.fail "bad thing"
            )



{-| A structure to relate notification and a list of subscribers who belong to the notification.
-}
type alias NotificationWithSubscribers =
    { notification : Notification
    , subscribers : (List Subscriber)
    }



notificationWithSubscribersDecoder : JD.Decoder NotificationWithSubscribers
notificationWithSubscribersDecoder =
    JDP.decode NotificationWithSubscribers
        |> JDP.required "notification" notificationDecoder
        |> JDP.required "subscribers" (JD.list subscriberDecoder)




{-| A structure represent either a cost spend or usage spend. Contains an amount and a unit.
-}
type alias Spend =
    { amount : String
    , unit : String
    }



spendDecoder : JD.Decoder Spend
spendDecoder =
    JDP.decode Spend
        |> JDP.required "amount" JD.string
        |> JDP.required "unit" JD.string




{-| Subscriber model. Each notification may contain multiple subscribers with different addresses.
-}
type alias Subscriber =
    { subscriptionType : SubscriptionType
    , address : String
    }



subscriberDecoder : JD.Decoder Subscriber
subscriberDecoder =
    JDP.decode Subscriber
        |> JDP.required "subscriptionType" subscriptionTypeDecoder
        |> JDP.required "address" JD.string




{-| One of

* `SubscriptionType_SNS`
* `SubscriptionType_EMAIL`

-}
type SubscriptionType
    = SubscriptionType_SNS
    | SubscriptionType_EMAIL



subscriptionTypeDecoder : JD.Decoder SubscriptionType
subscriptionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SNS" ->
                        JD.succeed SubscriptionType_SNS

                    "EMAIL" ->
                        JD.succeed SubscriptionType_EMAIL


                    _ ->
                        JD.fail "bad thing"
            )



{-| A time period indicated the start date and end date of a budget.
-}
type alias TimePeriod =
    { start : Date
    , end : Date
    }



timePeriodDecoder : JD.Decoder TimePeriod
timePeriodDecoder =
    JDP.decode TimePeriod
        |> JDP.required "start" JDX.date
        |> JDP.required "end" JDX.date




{-| One of

* `TimeUnit_MONTHLY`
* `TimeUnit_QUARTERLY`
* `TimeUnit_ANNUALLY`

-}
type TimeUnit
    = TimeUnit_MONTHLY
    | TimeUnit_QUARTERLY
    | TimeUnit_ANNUALLY



timeUnitDecoder : JD.Decoder TimeUnit
timeUnitDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "MONTHLY" ->
                        JD.succeed TimeUnit_MONTHLY

                    "QUARTERLY" ->
                        JD.succeed TimeUnit_QUARTERLY

                    "ANNUALLY" ->
                        JD.succeed TimeUnit_ANNUALLY


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from updateBudget
-}
type alias UpdateBudgetResponse =
    { 
    }



updateBudgetResponseDecoder : JD.Decoder UpdateBudgetResponse
updateBudgetResponseDecoder =
    JDP.decode UpdateBudgetResponse



{-| Type of HTTP response from updateNotification
-}
type alias UpdateNotificationResponse =
    { 
    }



updateNotificationResponseDecoder : JD.Decoder UpdateNotificationResponse
updateNotificationResponseDecoder =
    JDP.decode UpdateNotificationResponse



{-| Type of HTTP response from updateSubscriber
-}
type alias UpdateSubscriberResponse =
    { 
    }



updateSubscriberResponseDecoder : JD.Decoder UpdateSubscriberResponse
updateSubscriberResponseDecoder =
    JDP.decode UpdateSubscriberResponse



