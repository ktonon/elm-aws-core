module AWS.Services.Health
    exposing
        ( config
        , describeAffectedEntities
        , DescribeAffectedEntitiesOptions
        , describeEntityAggregates
        , DescribeEntityAggregatesOptions
        , describeEventAggregates
        , DescribeEventAggregatesOptions
        , describeEventDetails
        , DescribeEventDetailsOptions
        , describeEventTypes
        , DescribeEventTypesOptions
        , describeEvents
        , DescribeEventsOptions
        , AffectedEntity
        , DateTimeRange
        , DescribeAffectedEntitiesResponse
        , DescribeEntityAggregatesResponse
        , DescribeEventAggregatesResponse
        , DescribeEventDetailsResponse
        , DescribeEventTypesResponse
        , DescribeEventsResponse
        , EntityAggregate
        , EntityFilter
        , Event
        , EventAggregate
        , EventDescription
        , EventDetails
        , EventDetailsErrorItem
        , EventFilter
        , EventType
        , EventTypeFilter
        , InvalidPaginationToken
        , UnsupportedLocale
        , EntityStatusCode(..)
        , EventAggregateField(..)
        , EventStatusCode(..)
        , EventTypeCategory(..)
        )

{-| <fullname>AWS Health</fullname> <p>The AWS Health API provides programmatic access to the AWS Health information that is presented in the <a href="https://phd.aws.amazon.com/phd/home#/">AWS Personal Health Dashboard</a>. You can get information about events that affect your AWS resources:</p> <ul> <li> <p> <a>DescribeEvents</a>: Summary information about events.</p> </li> <li> <p> <a>DescribeEventDetails</a>: Detailed information about one or more events.</p> </li> <li> <p> <a>DescribeAffectedEntities</a>: Information about AWS resources that are affected by one or more events.</p> </li> </ul> <p>In addition, these operations provide information about event types and summary counts of events or affected entities:</p> <ul> <li> <p> <a>DescribeEventTypes</a>: Information about the kinds of events that AWS Health tracks.</p> </li> <li> <p> <a>DescribeEventAggregates</a>: A count of the number of events that meet specified criteria.</p> </li> <li> <p> <a>DescribeEntityAggregates</a>: A count of the number of affected entities that meet specified criteria.</p> </li> </ul> <p>The Health API requires a Business or Enterprise support plan from <a href="http://aws.amazon.com/premiumsupport/">AWS Support</a>. Calling the Health API from an account that does not have a Business or Enterprise support plan causes a <code>SubscriptionRequiredException</code>. </p> <p>For authentication of requests, AWS Health uses the <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing Process</a>.</p> <p>See the <a href="http://docs.aws.amazon.com/health/latest/ug/what-is-aws-health.html">AWS Health User Guide</a> for information about how to use the API.</p> <p> <b>Service Endpoint</b> </p> <p>The HTTP endpoint for the AWS Health API is:</p> <ul> <li> <p>https://health.us-east-1.amazonaws.com </p> </li> </ul>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [describeAffectedEntities](#describeAffectedEntities)
* [DescribeAffectedEntitiesOptions](#DescribeAffectedEntitiesOptions)
* [describeEntityAggregates](#describeEntityAggregates)
* [DescribeEntityAggregatesOptions](#DescribeEntityAggregatesOptions)
* [describeEventAggregates](#describeEventAggregates)
* [DescribeEventAggregatesOptions](#DescribeEventAggregatesOptions)
* [describeEventDetails](#describeEventDetails)
* [DescribeEventDetailsOptions](#DescribeEventDetailsOptions)
* [describeEventTypes](#describeEventTypes)
* [DescribeEventTypesOptions](#DescribeEventTypesOptions)
* [describeEvents](#describeEvents)
* [DescribeEventsOptions](#DescribeEventsOptions)


@docs describeAffectedEntities,DescribeAffectedEntitiesOptions,describeEntityAggregates,DescribeEntityAggregatesOptions,describeEventAggregates,DescribeEventAggregatesOptions,describeEventDetails,DescribeEventDetailsOptions,describeEventTypes,DescribeEventTypesOptions,describeEvents,DescribeEventsOptions

## Responses

* [DescribeAffectedEntitiesResponse](#DescribeAffectedEntitiesResponse)
* [DescribeEntityAggregatesResponse](#DescribeEntityAggregatesResponse)
* [DescribeEventAggregatesResponse](#DescribeEventAggregatesResponse)
* [DescribeEventDetailsResponse](#DescribeEventDetailsResponse)
* [DescribeEventTypesResponse](#DescribeEventTypesResponse)
* [DescribeEventsResponse](#DescribeEventsResponse)


@docs DescribeAffectedEntitiesResponse,DescribeEntityAggregatesResponse,DescribeEventAggregatesResponse,DescribeEventDetailsResponse,DescribeEventTypesResponse,DescribeEventsResponse

## Records

* [AffectedEntity](#AffectedEntity)
* [DateTimeRange](#DateTimeRange)
* [EntityAggregate](#EntityAggregate)
* [EntityFilter](#EntityFilter)
* [Event](#Event)
* [EventAggregate](#EventAggregate)
* [EventDescription](#EventDescription)
* [EventDetails](#EventDetails)
* [EventDetailsErrorItem](#EventDetailsErrorItem)
* [EventFilter](#EventFilter)
* [EventType](#EventType)
* [EventTypeFilter](#EventTypeFilter)


@docs AffectedEntity,DateTimeRange,EntityAggregate,EntityFilter,Event,EventAggregate,EventDescription,EventDetails,EventDetailsErrorItem,EventFilter,EventType,EventTypeFilter

## Unions

* [EntityStatusCode](#EntityStatusCode)
* [EventAggregateField](#EventAggregateField)
* [EventStatusCode](#EventStatusCode)
* [EventTypeCategory](#EventTypeCategory)


@docs EntityStatusCode,EventAggregateField,EventStatusCode,EventTypeCategory

## Exceptions

* [InvalidPaginationToken](#InvalidPaginationToken)
* [UnsupportedLocale](#UnsupportedLocale)


@docs InvalidPaginationToken,UnsupportedLocale

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
        "health"
        "2016-08-04"
        "1.1"
        "AWSHEALTH_20160804."
        "health.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Returns a list of entities that have been affected by the specified events, based on the specified filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service. Events that have impact beyond that of the affected entities, or where the extent of impact is unknown, include at least one entity indicating this.</p> <p>At least one event ARN is required. Results are sorted by the <code>lastUpdatedTime</code> of the entity, starting with the most recent.</p>

__Required Parameters__

* `filter` __:__ `EntityFilter`


-}
describeAffectedEntities :
    EntityFilter
    -> (DescribeAffectedEntitiesOptions -> DescribeAffectedEntitiesOptions)
    -> AWS.Http.UnsignedRequest DescribeAffectedEntitiesResponse
describeAffectedEntities filter setOptions =
  let
    options = setOptions (DescribeAffectedEntitiesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAffectedEntities"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAffectedEntitiesResponseDecoder


{-| Options for a describeAffectedEntities request
-}
type alias DescribeAffectedEntitiesOptions =
    { locale : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Returns the number of entities that are affected by each of the specified events. If no events are specified, the counts of all affected entities are returned.</p>

__Required Parameters__



-}
describeEntityAggregates :
    (DescribeEntityAggregatesOptions -> DescribeEntityAggregatesOptions)
    -> AWS.Http.UnsignedRequest DescribeEntityAggregatesResponse
describeEntityAggregates setOptions =
  let
    options = setOptions (DescribeEntityAggregatesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEntityAggregates"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEntityAggregatesResponseDecoder


{-| Options for a describeEntityAggregates request
-}
type alias DescribeEntityAggregatesOptions =
    { eventArns : Maybe (List String)
    }



{-| <p>Returns the number of events of each event type (issue, scheduled change, and account notification). If no filter is specified, the counts of all events in each category are returned.</p>

__Required Parameters__

* `aggregateField` __:__ `EventAggregateField`


-}
describeEventAggregates :
    EventAggregateField
    -> (DescribeEventAggregatesOptions -> DescribeEventAggregatesOptions)
    -> AWS.Http.UnsignedRequest DescribeEventAggregatesResponse
describeEventAggregates aggregateField setOptions =
  let
    options = setOptions (DescribeEventAggregatesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEventAggregates"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEventAggregatesResponseDecoder


{-| Options for a describeEventAggregates request
-}
type alias DescribeEventAggregatesOptions =
    { filter : Maybe EventFilter
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Returns detailed information about one or more specified events. Information includes standard event data (region, service, etc., as returned by <a>DescribeEvents</a>), a detailed event description, and possible additional metadata that depends upon the nature of the event. Affected entities are not included; to retrieve those, use the <a>DescribeAffectedEntities</a> operation.</p> <p>If a specified event cannot be retrieved, an error message is returned for that event.</p>

__Required Parameters__

* `eventArns` __:__ `(List String)`


-}
describeEventDetails :
    (List String)
    -> (DescribeEventDetailsOptions -> DescribeEventDetailsOptions)
    -> AWS.Http.UnsignedRequest DescribeEventDetailsResponse
describeEventDetails eventArns setOptions =
  let
    options = setOptions (DescribeEventDetailsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEventDetails"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEventDetailsResponseDecoder


{-| Options for a describeEventDetails request
-}
type alias DescribeEventDetailsOptions =
    { locale : Maybe String
    }



{-| <p>Returns the event types that meet the specified filter criteria. If no filter criteria are specified, all event types are returned, in no particular order.</p>

__Required Parameters__



-}
describeEventTypes :
    (DescribeEventTypesOptions -> DescribeEventTypesOptions)
    -> AWS.Http.UnsignedRequest DescribeEventTypesResponse
describeEventTypes setOptions =
  let
    options = setOptions (DescribeEventTypesOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEventTypes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEventTypesResponseDecoder


{-| Options for a describeEventTypes request
-}
type alias DescribeEventTypesOptions =
    { filter : Maybe EventTypeFilter
    , locale : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Returns information about events that meet the specified filter criteria. Events are returned in a summary form and do not include the detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the <a>DescribeEventDetails</a> and <a>DescribeAffectedEntities</a> operations.</p> <p>If no filter criteria are specified, all events are returned. Results are sorted by <code>lastModifiedTime</code>, starting with the most recent.</p>

__Required Parameters__



-}
describeEvents :
    (DescribeEventsOptions -> DescribeEventsOptions)
    -> AWS.Http.UnsignedRequest DescribeEventsResponse
describeEvents setOptions =
  let
    options = setOptions (DescribeEventsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEvents"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEventsResponseDecoder


{-| Options for a describeEvents request
-}
type alias DescribeEventsOptions =
    { filter : Maybe EventFilter
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , locale : Maybe String
    }




{-| <p>Information about an entity that is affected by a Health event.</p>
-}
type alias AffectedEntity =
    { entityArn : Maybe String
    , eventArn : Maybe String
    , entityValue : Maybe String
    , awsAccountId : Maybe String
    , lastUpdatedTime : Maybe Date
    , statusCode : Maybe EntityStatusCode
    , tags : Maybe (Dict String String)
    }



affectedEntityDecoder : JD.Decoder AffectedEntity
affectedEntityDecoder =
    JDP.decode AffectedEntity
        |> JDP.optional "entityArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "entityValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "awsAccountId" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastUpdatedTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "statusCode" (JD.nullable entityStatusCodeDecoder) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p>A range of dates and times that is used by the <a>EventFilter</a> and <a>EntityFilter</a> objects. If <code>from</code> is set and <code>to</code> is set: match items where the timestamp (<code>startTime</code>, <code>endTime</code>, or <code>lastUpdatedTime</code>) is between <code>from</code> and <code>to</code> inclusive. If <code>from</code> is set and <code>to</code> is not set: match items where the timestamp value is equal to or after <code>from</code>. If <code>from</code> is not set and <code>to</code> is set: match items where the timestamp value is equal to or before <code>to</code>.</p>
-}
type alias DateTimeRange =
    { from : Maybe Date
    , to : Maybe Date
    }



dateTimeRangeDecoder : JD.Decoder DateTimeRange
dateTimeRangeDecoder =
    JDP.decode DateTimeRange
        |> JDP.optional "from" (JD.nullable JDX.date) Nothing
        |> JDP.optional "to" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from describeAffectedEntities
-}
type alias DescribeAffectedEntitiesResponse =
    { entities : Maybe (List AffectedEntity)
    , nextToken : Maybe String
    }



describeAffectedEntitiesResponseDecoder : JD.Decoder DescribeAffectedEntitiesResponse
describeAffectedEntitiesResponseDecoder =
    JDP.decode DescribeAffectedEntitiesResponse
        |> JDP.optional "entities" (JD.nullable (JD.list affectedEntityDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeEntityAggregates
-}
type alias DescribeEntityAggregatesResponse =
    { entityAggregates : Maybe (List EntityAggregate)
    }



describeEntityAggregatesResponseDecoder : JD.Decoder DescribeEntityAggregatesResponse
describeEntityAggregatesResponseDecoder =
    JDP.decode DescribeEntityAggregatesResponse
        |> JDP.optional "entityAggregates" (JD.nullable (JD.list entityAggregateDecoder)) Nothing




{-| Type of HTTP response from describeEventAggregates
-}
type alias DescribeEventAggregatesResponse =
    { eventAggregates : Maybe (List EventAggregate)
    , nextToken : Maybe String
    }



describeEventAggregatesResponseDecoder : JD.Decoder DescribeEventAggregatesResponse
describeEventAggregatesResponseDecoder =
    JDP.decode DescribeEventAggregatesResponse
        |> JDP.optional "eventAggregates" (JD.nullable (JD.list eventAggregateDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeEventDetails
-}
type alias DescribeEventDetailsResponse =
    { successfulSet : Maybe (List EventDetails)
    , failedSet : Maybe (List EventDetailsErrorItem)
    }



describeEventDetailsResponseDecoder : JD.Decoder DescribeEventDetailsResponse
describeEventDetailsResponseDecoder =
    JDP.decode DescribeEventDetailsResponse
        |> JDP.optional "successfulSet" (JD.nullable (JD.list eventDetailsDecoder)) Nothing
        |> JDP.optional "failedSet" (JD.nullable (JD.list eventDetailsErrorItemDecoder)) Nothing




{-| Type of HTTP response from describeEventTypes
-}
type alias DescribeEventTypesResponse =
    { eventTypes : Maybe (List EventType)
    , nextToken : Maybe String
    }



describeEventTypesResponseDecoder : JD.Decoder DescribeEventTypesResponse
describeEventTypesResponseDecoder =
    JDP.decode DescribeEventTypesResponse
        |> JDP.optional "eventTypes" (JD.nullable (JD.list eventTypeDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeEvents
-}
type alias DescribeEventsResponse =
    { events : Maybe (List Event)
    , nextToken : Maybe String
    }



describeEventsResponseDecoder : JD.Decoder DescribeEventsResponse
describeEventsResponseDecoder =
    JDP.decode DescribeEventsResponse
        |> JDP.optional "events" (JD.nullable (JD.list eventDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>The number of entities that are affected by one or more events. Returned by the <a>DescribeEntityAggregates</a> operation.</p>
-}
type alias EntityAggregate =
    { eventArn : Maybe String
    , count : Maybe Int
    }



entityAggregateDecoder : JD.Decoder EntityAggregate
entityAggregateDecoder =
    JDP.decode EntityAggregate
        |> JDP.optional "eventArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "count" (JD.nullable JD.int) Nothing




{-| <p>The values to use to filter results from the <a>DescribeAffectedEntities</a> operation.</p>
-}
type alias EntityFilter =
    { eventArns : (List String)
    , entityArns : Maybe (List String)
    , entityValues : Maybe (List String)
    , lastUpdatedTimes : Maybe (List DateTimeRange)
    , tags : Maybe (List (Dict String String))
    , statusCodes : Maybe (List EntityStatusCode)
    }



entityFilterDecoder : JD.Decoder EntityFilter
entityFilterDecoder =
    JDP.decode EntityFilter
        |> JDP.required "eventArns" (JD.list JD.string)
        |> JDP.optional "entityArns" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "entityValues" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "lastUpdatedTimes" (JD.nullable (JD.list dateTimeRangeDecoder)) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list (JD.dict JD.string))) Nothing
        |> JDP.optional "statusCodes" (JD.nullable (JD.list entityStatusCodeDecoder)) Nothing




{-| <p>Summary information about an event, returned by the <a>DescribeEvents</a> operation. The <a>DescribeEventDetails</a> operation also returns this information, as well as the <a>EventDescription</a> and additional event metadata.</p>
-}
type alias Event =
    { arn : Maybe String
    , service : Maybe String
    , eventTypeCode : Maybe String
    , eventTypeCategory : Maybe EventTypeCategory
    , region : Maybe String
    , availabilityZone : Maybe String
    , startTime : Maybe Date
    , endTime : Maybe Date
    , lastUpdatedTime : Maybe Date
    , statusCode : Maybe EventStatusCode
    }



eventDecoder : JD.Decoder Event
eventDecoder =
    JDP.decode Event
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "service" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventTypeCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventTypeCategory" (JD.nullable eventTypeCategoryDecoder) Nothing
        |> JDP.optional "region" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUpdatedTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "statusCode" (JD.nullable eventStatusCodeDecoder) Nothing




{-| <p>The number of events of each issue type. Returned by the <a>DescribeEventAggregates</a> operation.</p>
-}
type alias EventAggregate =
    { aggregateValue : Maybe String
    , count : Maybe Int
    }



eventAggregateDecoder : JD.Decoder EventAggregate
eventAggregateDecoder =
    JDP.decode EventAggregate
        |> JDP.optional "aggregateValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "count" (JD.nullable JD.int) Nothing




{-| <p>The detailed description of the event. Included in the information returned by the <a>DescribeEventDetails</a> operation.</p>
-}
type alias EventDescription =
    { latestDescription : Maybe String
    }



eventDescriptionDecoder : JD.Decoder EventDescription
eventDescriptionDecoder =
    JDP.decode EventDescription
        |> JDP.optional "latestDescription" (JD.nullable JD.string) Nothing




{-| <p>Detailed information about an event. A combination of an <a>Event</a> object, an <a>EventDescription</a> object, and additional metadata about the event. Returned by the <a>DescribeEventDetails</a> operation.</p>
-}
type alias EventDetails =
    { event : Maybe Event
    , eventDescription : Maybe EventDescription
    , eventMetadata : Maybe (Dict String String)
    }



eventDetailsDecoder : JD.Decoder EventDetails
eventDetailsDecoder =
    JDP.decode EventDetails
        |> JDP.optional "event" (JD.nullable eventDecoder) Nothing
        |> JDP.optional "eventDescription" (JD.nullable eventDescriptionDecoder) Nothing
        |> JDP.optional "eventMetadata" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p>Error information returned when a <a>DescribeEventDetails</a> operation cannot find a specified event.</p>
-}
type alias EventDetailsErrorItem =
    { eventArn : Maybe String
    , errorName : Maybe String
    , errorMessage : Maybe String
    }



eventDetailsErrorItemDecoder : JD.Decoder EventDetailsErrorItem
eventDetailsErrorItemDecoder =
    JDP.decode EventDetailsErrorItem
        |> JDP.optional "eventArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorName" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorMessage" (JD.nullable JD.string) Nothing




{-| <p>The values to use to filter results from the <a>DescribeEvents</a> and <a>DescribeEventAggregates</a> operations.</p>
-}
type alias EventFilter =
    { eventArns : Maybe (List String)
    , eventTypeCodes : Maybe (List String)
    , services : Maybe (List String)
    , regions : Maybe (List String)
    , availabilityZones : Maybe (List String)
    , startTimes : Maybe (List DateTimeRange)
    , endTimes : Maybe (List DateTimeRange)
    , lastUpdatedTimes : Maybe (List DateTimeRange)
    , entityArns : Maybe (List String)
    , entityValues : Maybe (List String)
    , eventTypeCategories : Maybe (List EventTypeCategory)
    , tags : Maybe (List (Dict String String))
    , eventStatusCodes : Maybe (List EventStatusCode)
    }



eventFilterDecoder : JD.Decoder EventFilter
eventFilterDecoder =
    JDP.decode EventFilter
        |> JDP.optional "eventArns" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "eventTypeCodes" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "services" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "regions" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "availabilityZones" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "startTimes" (JD.nullable (JD.list dateTimeRangeDecoder)) Nothing
        |> JDP.optional "endTimes" (JD.nullable (JD.list dateTimeRangeDecoder)) Nothing
        |> JDP.optional "lastUpdatedTimes" (JD.nullable (JD.list dateTimeRangeDecoder)) Nothing
        |> JDP.optional "entityArns" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "entityValues" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "eventTypeCategories" (JD.nullable (JD.list eventTypeCategoryDecoder)) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list (JD.dict JD.string))) Nothing
        |> JDP.optional "eventStatusCodes" (JD.nullable (JD.list eventStatusCodeDecoder)) Nothing




{-| <p>Metadata about a type of event that is reported by AWS Health. Data consists of the category (for example, <code>issue</code>), the service (for example, <code>EC2</code>), and the event type code (for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>).</p>
-}
type alias EventType =
    { service : Maybe String
    , code : Maybe String
    , category : Maybe EventTypeCategory
    }



eventTypeDecoder : JD.Decoder EventType
eventTypeDecoder =
    JDP.decode EventType
        |> JDP.optional "service" (JD.nullable JD.string) Nothing
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "category" (JD.nullable eventTypeCategoryDecoder) Nothing




{-| <p>The values to use to filter results from the <a>DescribeEventTypes</a> operation.</p>
-}
type alias EventTypeFilter =
    { eventTypeCodes : Maybe (List String)
    , services : Maybe (List String)
    , eventTypeCategories : Maybe (List EventTypeCategory)
    }



eventTypeFilterDecoder : JD.Decoder EventTypeFilter
eventTypeFilterDecoder =
    JDP.decode EventTypeFilter
        |> JDP.optional "eventTypeCodes" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "services" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "eventTypeCategories" (JD.nullable (JD.list eventTypeCategoryDecoder)) Nothing




{-| <p>The specified pagination token (<code>nextToken</code>) is not valid.</p>
-}
type alias InvalidPaginationToken =
    { message : Maybe String
    }



invalidPaginationTokenDecoder : JD.Decoder InvalidPaginationToken
invalidPaginationTokenDecoder =
    JDP.decode InvalidPaginationToken
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified locale is not supported.</p>
-}
type alias UnsupportedLocale =
    { message : Maybe String
    }



unsupportedLocaleDecoder : JD.Decoder UnsupportedLocale
unsupportedLocaleDecoder =
    JDP.decode UnsupportedLocale
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `EntityStatusCode_IMPAIRED`
* `EntityStatusCode_UNIMPAIRED`
* `EntityStatusCode_UNKNOWN`

-}
type EntityStatusCode
    = EntityStatusCode_IMPAIRED
    | EntityStatusCode_UNIMPAIRED
    | EntityStatusCode_UNKNOWN



entityStatusCodeDecoder : JD.Decoder EntityStatusCode
entityStatusCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IMPAIRED" ->
                        JD.succeed EntityStatusCode_IMPAIRED

                    "UNIMPAIRED" ->
                        JD.succeed EntityStatusCode_UNIMPAIRED

                    "UNKNOWN" ->
                        JD.succeed EntityStatusCode_UNKNOWN


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `EventAggregateField_eventTypeCategory`

-}
type EventAggregateField
    = EventAggregateField_eventTypeCategory



eventAggregateFieldDecoder : JD.Decoder EventAggregateField
eventAggregateFieldDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "eventTypeCategory" ->
                        JD.succeed EventAggregateField_eventTypeCategory


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `EventStatusCode_open`
* `EventStatusCode_closed`
* `EventStatusCode_upcoming`

-}
type EventStatusCode
    = EventStatusCode_open
    | EventStatusCode_closed
    | EventStatusCode_upcoming



eventStatusCodeDecoder : JD.Decoder EventStatusCode
eventStatusCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "open" ->
                        JD.succeed EventStatusCode_open

                    "closed" ->
                        JD.succeed EventStatusCode_closed

                    "upcoming" ->
                        JD.succeed EventStatusCode_upcoming


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `EventTypeCategory_issue`
* `EventTypeCategory_accountNotification`
* `EventTypeCategory_scheduledChange`

-}
type EventTypeCategory
    = EventTypeCategory_issue
    | EventTypeCategory_accountNotification
    | EventTypeCategory_scheduledChange



eventTypeCategoryDecoder : JD.Decoder EventTypeCategory
eventTypeCategoryDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "issue" ->
                        JD.succeed EventTypeCategory_issue

                    "accountNotification" ->
                        JD.succeed EventTypeCategory_accountNotification

                    "scheduledChange" ->
                        JD.succeed EventTypeCategory_scheduledChange


                    _ ->
                        JD.fail "bad thing"
            )



