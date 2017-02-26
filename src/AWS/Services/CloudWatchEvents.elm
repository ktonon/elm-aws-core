module AWS.Services.CloudWatchEvents
    exposing
        ( config
        , deleteRule
        , describeRule
        , disableRule
        , enableRule
        , listRuleNamesByTarget
        , ListRuleNamesByTargetOptions
        , listRules
        , ListRulesOptions
        , listTargetsByRule
        , ListTargetsByRuleOptions
        , putEvents
        , putRule
        , PutRuleOptions
        , putTargets
        , removeTargets
        , testEventPattern
        , ConcurrentModificationException
        , DescribeRuleResponse
        , InternalException
        , InvalidEventPatternException
        , LimitExceededException
        , ListRuleNamesByTargetResponse
        , ListRulesResponse
        , ListTargetsByRuleResponse
        , PutEventsRequestEntry
        , PutEventsResponse
        , PutEventsResultEntry
        , PutRuleResponse
        , PutTargetsResponse
        , PutTargetsResultEntry
        , RemoveTargetsResponse
        , RemoveTargetsResultEntry
        , ResourceNotFoundException
        , Rule
        , RuleState(..)
        , Target
        , TestEventPatternResponse
        )

{-| <p>Amazon CloudWatch Events helps you to respond to state changes in your AWS resources. When your resources change state they automatically send events into an event stream. You can create rules that match selected events in the stream and route them to targets to take action. You can also use rules to take action on a pre-determined schedule. For example, you can configure rules to: </p> <ul> <li>Automatically invoke an AWS Lambda function to update DNS entries when an event notifies you that Amazon EC2 instance enters the running state.</li> <li>Direct specific API records from CloudTrail to an Amazon Kinesis stream for detailed analysis of potential security or availability risks.</li> <li>Periodically invoke a built-in target to create a snapshot of an Amazon EBS volume.</li> </ul> <p> For more information about Amazon CloudWatch Events features, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide">Amazon CloudWatch Developer Guide</a>. </p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [deleteRule](#deleteRule)
* [describeRule](#describeRule)
* [disableRule](#disableRule)
* [enableRule](#enableRule)
* [listRuleNamesByTarget](#listRuleNamesByTarget)
* [ListRuleNamesByTargetOptions](#ListRuleNamesByTargetOptions)
* [listRules](#listRules)
* [ListRulesOptions](#ListRulesOptions)
* [listTargetsByRule](#listTargetsByRule)
* [ListTargetsByRuleOptions](#ListTargetsByRuleOptions)
* [putEvents](#putEvents)
* [putRule](#putRule)
* [PutRuleOptions](#PutRuleOptions)
* [putTargets](#putTargets)
* [removeTargets](#removeTargets)
* [testEventPattern](#testEventPattern)


@docs deleteRule,describeRule,disableRule,enableRule,listRuleNamesByTarget,ListRuleNamesByTargetOptions,listRules,ListRulesOptions,listTargetsByRule,ListTargetsByRuleOptions,putEvents,putRule,PutRuleOptions,putTargets,removeTargets,testEventPattern

## Responses

* [DescribeRuleResponse](#DescribeRuleResponse)
* [ListRuleNamesByTargetResponse](#ListRuleNamesByTargetResponse)
* [ListRulesResponse](#ListRulesResponse)
* [ListTargetsByRuleResponse](#ListTargetsByRuleResponse)
* [PutEventsResponse](#PutEventsResponse)
* [PutRuleResponse](#PutRuleResponse)
* [PutTargetsResponse](#PutTargetsResponse)
* [RemoveTargetsResponse](#RemoveTargetsResponse)
* [TestEventPatternResponse](#TestEventPatternResponse)


@docs DescribeRuleResponse,ListRuleNamesByTargetResponse,ListRulesResponse,ListTargetsByRuleResponse,PutEventsResponse,PutRuleResponse,PutTargetsResponse,RemoveTargetsResponse,TestEventPatternResponse

## Records

* [PutEventsRequestEntry](#PutEventsRequestEntry)
* [PutEventsResultEntry](#PutEventsResultEntry)
* [PutTargetsResultEntry](#PutTargetsResultEntry)
* [RemoveTargetsResultEntry](#RemoveTargetsResultEntry)
* [Rule](#Rule)
* [Target](#Target)


@docs PutEventsRequestEntry,PutEventsResultEntry,PutTargetsResultEntry,RemoveTargetsResultEntry,Rule,Target

## Unions

* [RuleState](#RuleState)


@docs RuleState

## Exceptions

* [ConcurrentModificationException](#ConcurrentModificationException)
* [InternalException](#InternalException)
* [InvalidEventPatternException](#InvalidEventPatternException)
* [LimitExceededException](#LimitExceededException)
* [ResourceNotFoundException](#ResourceNotFoundException)


@docs ConcurrentModificationException,InternalException,InvalidEventPatternException,LimitExceededException,ResourceNotFoundException

-}

import AWS
import AWS.Config
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : AWS.ServiceConfig
config =
    AWS.Config.Service
        "events"
        "2015-10-07"
        "1.1"
        "AWSEVENTS_20151007."
        "events.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Deletes a rule. You must remove all targets from a rule using <a>RemoveTargets</a> before you can delete the rule.</p> <p> <b>Note:</b> When you delete a rule, incoming events might still continue to match to the deleted rule. Please allow a short period of time for changes to take effect. </p>

__Required Parameters__

* `name` __:__ `String`


-}
deleteRule :
    String
    -> AWS.Request ()
deleteRule name =
    AWS.Http.unsignedRequest
        "DeleteRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Describes the details of the specified rule.</p>

__Required Parameters__

* `name` __:__ `String`


-}
describeRule :
    String
    -> AWS.Request DescribeRuleResponse
describeRule name =
    AWS.Http.unsignedRequest
        "DescribeRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeRuleResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Disables a rule. A disabled rule won't match any events, and won't self-trigger if it has a schedule expression.</p> <p> <b>Note:</b> When you disable a rule, incoming events might still continue to match to the disabled rule. Please allow a short period of time for changes to take effect. </p>

__Required Parameters__

* `name` __:__ `String`


-}
disableRule :
    String
    -> AWS.Request ()
disableRule name =
    AWS.Http.unsignedRequest
        "DisableRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Enables a rule. If the rule does not exist, the operation fails.</p> <p> <b>Note:</b> When you enable a rule, incoming events might not immediately start matching to a newly enabled rule. Please allow a short period of time for changes to take effect. </p>

__Required Parameters__

* `name` __:__ `String`


-}
enableRule :
    String
    -> AWS.Request ()
enableRule name =
    AWS.Http.unsignedRequest
        "EnableRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Lists the names of the rules that the given target is put to. You can see which of the rules in Amazon CloudWatch Events can invoke a specific target in your account. If you have more rules in your account than the given limit, the results will be paginated. In that case, use the next token returned in the response and repeat ListRulesByTarget until the NextToken in the response is returned as null.</p>

__Required Parameters__

* `targetArn` __:__ `String`


-}
listRuleNamesByTarget :
    String
    -> (ListRuleNamesByTargetOptions -> ListRuleNamesByTargetOptions)
    -> AWS.Request ListRuleNamesByTargetResponse
listRuleNamesByTarget targetArn setOptions =
  let
    options = setOptions (ListRuleNamesByTargetOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListRuleNamesByTarget"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listRuleNamesByTargetResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listRuleNamesByTarget request
-}
type alias ListRuleNamesByTargetOptions =
    { nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Lists the Amazon CloudWatch Events rules in your account. You can either list all the rules or you can provide a prefix to match to the rule names. If you have more rules in your account than the given limit, the results will be paginated. In that case, use the next token returned in the response and repeat ListRules until the NextToken in the response is returned as null.</p>

__Required Parameters__



-}
listRules :
    (ListRulesOptions -> ListRulesOptions)
    -> AWS.Request ListRulesResponse
listRules setOptions =
  let
    options = setOptions (ListRulesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListRules"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listRulesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listRules request
-}
type alias ListRulesOptions =
    { namePrefix : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Lists of targets assigned to the rule.</p>

__Required Parameters__

* `rule` __:__ `String`


-}
listTargetsByRule :
    String
    -> (ListTargetsByRuleOptions -> ListTargetsByRuleOptions)
    -> AWS.Request ListTargetsByRuleResponse
listTargetsByRule rule setOptions =
  let
    options = setOptions (ListTargetsByRuleOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTargetsByRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTargetsByRuleResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listTargetsByRule request
-}
type alias ListTargetsByRuleOptions =
    { nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Sends custom events to Amazon CloudWatch Events so that they can be matched to rules.</p>

__Required Parameters__

* `entries` __:__ `(List PutEventsRequestEntry)`


-}
putEvents :
    (List PutEventsRequestEntry)
    -> AWS.Request PutEventsResponse
putEvents entries =
    AWS.Http.unsignedRequest
        "PutEvents"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putEventsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates or updates a rule. Rules are enabled by default, or based on value of the State parameter. You can disable a rule using <a>DisableRule</a>.</p> <p> <b>Note:</b> When you create or update a rule, incoming events might not immediately start matching to new or updated rules. Please allow a short period of time for changes to take effect.</p> <p>A rule must contain at least an EventPattern or ScheduleExpression. Rules with EventPatterns are triggered when a matching event is observed. Rules with ScheduleExpressions self-trigger based on the given schedule. A rule can have both an EventPattern and a ScheduleExpression, in which case the rule will trigger on matching events as well as on a schedule.</p> <p> <b>Note:</b> Most services in AWS treat : or / as the same character in Amazon Resource Names (ARNs). However, CloudWatch Events uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event you want to match. </p>

__Required Parameters__

* `name` __:__ `String`


-}
putRule :
    String
    -> (PutRuleOptions -> PutRuleOptions)
    -> AWS.Request PutRuleResponse
putRule name setOptions =
  let
    options = setOptions (PutRuleOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putRuleResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a putRule request
-}
type alias PutRuleOptions =
    { scheduleExpression : Maybe String
    , eventPattern : Maybe String
    , state : Maybe RuleState
    , description : Maybe String
    , roleArn : Maybe String
    }



{-| <p>Adds target(s) to a rule. Targets are the resources that can be invoked when a rule is triggered. For example, AWS Lambda functions, Amazon Kinesis streams, and built-in targets. Updates the target(s) if they are already associated with the role. In other words, if there is already a target with the given target ID, then the target associated with that ID is updated.</p> <p>In order to be able to make API calls against the resources you own, Amazon CloudWatch Events needs the appropriate permissions. For AWS Lambda and Amazon SNS resources, CloudWatch Events relies on resource-based policies. For Amazon Kinesis streams, CloudWatch Events relies on IAM roles. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/EventsTargetPermissions.html">Permissions for Sending Events to Targets</a> in the <b><i>Amazon CloudWatch Developer Guide</i></b>.</p> <p><b>Input</b> and <b>InputPath</b> are mutually-exclusive and optional parameters of a target. When a rule is triggered due to a matched event, if for a target:</p> <ul> <li>Neither <b>Input</b> nor <b>InputPath</b> is specified, then the entire event is passed to the target in JSON form.</li> <li> <b>InputPath</b> is specified in the form of JSONPath (e.g. <b>$.detail</b>), then only the part of the event specified in the path is passed to the target (e.g. only the detail part of the event is passed). </li> <li> <b>Input</b> is specified in the form of a valid JSON, then the matched event is overridden with this constant.</li> </ul> <p> <b>Note:</b> When you add targets to a rule, when the associated rule triggers, new or updated targets might not be immediately invoked. Please allow a short period of time for changes to take effect. </p>

__Required Parameters__

* `rule` __:__ `String`
* `targets` __:__ `(List Target)`


-}
putTargets :
    String
    -> (List Target)
    -> AWS.Request PutTargetsResponse
putTargets rule targets =
    AWS.Http.unsignedRequest
        "PutTargets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putTargetsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Removes target(s) from a rule so that when the rule is triggered, those targets will no longer be invoked.</p> <p> <b>Note:</b> When you remove a target, when the associated rule triggers, removed targets might still continue to be invoked. Please allow a short period of time for changes to take effect. </p>

__Required Parameters__

* `rule` __:__ `String`
* `ids` __:__ `(List String)`


-}
removeTargets :
    String
    -> (List String)
    -> AWS.Request RemoveTargetsResponse
removeTargets rule ids =
    AWS.Http.unsignedRequest
        "RemoveTargets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        removeTargetsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Tests whether an event pattern matches the provided event.</p> <p> <b>Note:</b> Most services in AWS treat : or / as the same character in Amazon Resource Names (ARNs). However, CloudWatch Events uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event you want to match. </p>

__Required Parameters__

* `eventPattern` __:__ `String`
* `event` __:__ `String`


-}
testEventPattern :
    String
    -> String
    -> AWS.Request TestEventPatternResponse
testEventPattern eventPattern event =
    AWS.Http.unsignedRequest
        "TestEventPattern"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        testEventPatternResponseDecoder
        |> AWS.UnsignedRequest




{-| <p>This exception occurs if there is concurrent modification on rule or target.</p>
-}
type alias ConcurrentModificationException =
    { 
    }



concurrentModificationExceptionDecoder : JD.Decoder ConcurrentModificationException
concurrentModificationExceptionDecoder =
    JDP.decode ConcurrentModificationException



{-| Type of HTTP response from describeRule
-}
type alias DescribeRuleResponse =
    { name : Maybe String
    , arn : Maybe String
    , eventPattern : Maybe String
    , scheduleExpression : Maybe String
    , state : Maybe RuleState
    , description : Maybe String
    , roleArn : Maybe String
    }



describeRuleResponseDecoder : JD.Decoder DescribeRuleResponse
describeRuleResponseDecoder =
    JDP.decode DescribeRuleResponse
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventPattern" (JD.nullable JD.string) Nothing
        |> JDP.optional "scheduleExpression" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable ruleStateDecoder) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleArn" (JD.nullable JD.string) Nothing




{-| <p>This exception occurs due to unexpected causes.</p>
-}
type alias InternalException =
    { 
    }



internalExceptionDecoder : JD.Decoder InternalException
internalExceptionDecoder =
    JDP.decode InternalException



{-| <p>The event pattern is invalid.</p>
-}
type alias InvalidEventPatternException =
    { 
    }



invalidEventPatternExceptionDecoder : JD.Decoder InvalidEventPatternException
invalidEventPatternExceptionDecoder =
    JDP.decode InvalidEventPatternException



{-| <p>This exception occurs if you try to create more rules or add more targets to a rule than allowed by default.</p>
-}
type alias LimitExceededException =
    { 
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException



{-| Type of HTTP response from listRuleNamesByTarget
-}
type alias ListRuleNamesByTargetResponse =
    { ruleNames : Maybe (List String)
    , nextToken : Maybe String
    }



listRuleNamesByTargetResponseDecoder : JD.Decoder ListRuleNamesByTargetResponse
listRuleNamesByTargetResponseDecoder =
    JDP.decode ListRuleNamesByTargetResponse
        |> JDP.optional "ruleNames" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listRules
-}
type alias ListRulesResponse =
    { rules : Maybe (List Rule)
    , nextToken : Maybe String
    }



listRulesResponseDecoder : JD.Decoder ListRulesResponse
listRulesResponseDecoder =
    JDP.decode ListRulesResponse
        |> JDP.optional "rules" (JD.nullable (JD.list ruleDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listTargetsByRule
-}
type alias ListTargetsByRuleResponse =
    { targets : Maybe (List Target)
    , nextToken : Maybe String
    }



listTargetsByRuleResponseDecoder : JD.Decoder ListTargetsByRuleResponse
listTargetsByRuleResponseDecoder =
    JDP.decode ListTargetsByRuleResponse
        |> JDP.optional "targets" (JD.nullable (JD.list targetDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Contains information about the event to be used in PutEvents.</p>
-}
type alias PutEventsRequestEntry =
    { time : Maybe Date
    , source : Maybe String
    , resources : Maybe (List String)
    , detailType : Maybe String
    , detail : Maybe String
    }



putEventsRequestEntryDecoder : JD.Decoder PutEventsRequestEntry
putEventsRequestEntryDecoder =
    JDP.decode PutEventsRequestEntry
        |> JDP.optional "time" (JD.nullable JDX.date) Nothing
        |> JDP.optional "source" (JD.nullable JD.string) Nothing
        |> JDP.optional "resources" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "detailType" (JD.nullable JD.string) Nothing
        |> JDP.optional "detail" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from putEvents
-}
type alias PutEventsResponse =
    { failedEntryCount : Maybe Int
    , entries : Maybe (List PutEventsResultEntry)
    }



putEventsResponseDecoder : JD.Decoder PutEventsResponse
putEventsResponseDecoder =
    JDP.decode PutEventsResponse
        |> JDP.optional "failedEntryCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "entries" (JD.nullable (JD.list putEventsResultEntryDecoder)) Nothing




{-| <p>A PutEventsResult contains a list of PutEventsResultEntry.</p>
-}
type alias PutEventsResultEntry =
    { eventId : Maybe String
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



putEventsResultEntryDecoder : JD.Decoder PutEventsResultEntry
putEventsResultEntryDecoder =
    JDP.decode PutEventsResultEntry
        |> JDP.optional "eventId" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorMessage" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from putRule
-}
type alias PutRuleResponse =
    { ruleArn : Maybe String
    }



putRuleResponseDecoder : JD.Decoder PutRuleResponse
putRuleResponseDecoder =
    JDP.decode PutRuleResponse
        |> JDP.optional "ruleArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from putTargets
-}
type alias PutTargetsResponse =
    { failedEntryCount : Maybe Int
    , failedEntries : Maybe (List PutTargetsResultEntry)
    }



putTargetsResponseDecoder : JD.Decoder PutTargetsResponse
putTargetsResponseDecoder =
    JDP.decode PutTargetsResponse
        |> JDP.optional "failedEntryCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "failedEntries" (JD.nullable (JD.list putTargetsResultEntryDecoder)) Nothing




{-| <p>A PutTargetsResult contains a list of PutTargetsResultEntry.</p>
-}
type alias PutTargetsResultEntry =
    { targetId : Maybe String
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



putTargetsResultEntryDecoder : JD.Decoder PutTargetsResultEntry
putTargetsResultEntryDecoder =
    JDP.decode PutTargetsResultEntry
        |> JDP.optional "targetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorMessage" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from removeTargets
-}
type alias RemoveTargetsResponse =
    { failedEntryCount : Maybe Int
    , failedEntries : Maybe (List RemoveTargetsResultEntry)
    }



removeTargetsResponseDecoder : JD.Decoder RemoveTargetsResponse
removeTargetsResponseDecoder =
    JDP.decode RemoveTargetsResponse
        |> JDP.optional "failedEntryCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "failedEntries" (JD.nullable (JD.list removeTargetsResultEntryDecoder)) Nothing




{-| <p>The ID of the target requested to be removed from the rule by Amazon CloudWatch Events.</p>
-}
type alias RemoveTargetsResultEntry =
    { targetId : Maybe String
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



removeTargetsResultEntryDecoder : JD.Decoder RemoveTargetsResultEntry
removeTargetsResultEntryDecoder =
    JDP.decode RemoveTargetsResultEntry
        |> JDP.optional "targetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorMessage" (JD.nullable JD.string) Nothing




{-| <p>The rule does not exist.</p>
-}
type alias ResourceNotFoundException =
    { 
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException



{-| <p>Contains information about a rule in Amazon CloudWatch Events. A ListRulesResult contains a list of Rules.</p>
-}
type alias Rule =
    { name : Maybe String
    , arn : Maybe String
    , eventPattern : Maybe String
    , state : Maybe RuleState
    , description : Maybe String
    , scheduleExpression : Maybe String
    , roleArn : Maybe String
    }



ruleDecoder : JD.Decoder Rule
ruleDecoder =
    JDP.decode Rule
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventPattern" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable ruleStateDecoder) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "scheduleExpression" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleArn" (JD.nullable JD.string) Nothing




{-| One of

* `RuleState_ENABLED`
* `RuleState_DISABLED`

-}
type RuleState
    = RuleState_ENABLED
    | RuleState_DISABLED



ruleStateDecoder : JD.Decoder RuleState
ruleStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed RuleState_ENABLED

                    "DISABLED" ->
                        JD.succeed RuleState_DISABLED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Targets are the resources that can be invoked when a rule is triggered. For example, AWS Lambda functions, Amazon Kinesis streams, and built-in targets.</p> <p><b>Input</b> and <b>InputPath</b> are mutually-exclusive and optional parameters of a target. When a rule is triggered due to a matched event, if for a target:</p> <ul> <li>Neither <b>Input</b> nor <b>InputPath</b> is specified, then the entire event is passed to the target in JSON form.</li> <li> <b>InputPath</b> is specified in the form of JSONPath (e.g. <b>$.detail</b>), then only the part of the event specified in the path is passed to the target (e.g. only the detail part of the event is passed). </li> <li> <b>Input</b> is specified in the form of a valid JSON, then the matched event is overridden with this constant.</li> </ul>
-}
type alias Target =
    { id : String
    , arn : String
    , input : Maybe String
    , inputPath : Maybe String
    }



targetDecoder : JD.Decoder Target
targetDecoder =
    JDP.decode Target
        |> JDP.required "id" JD.string
        |> JDP.required "arn" JD.string
        |> JDP.optional "input" (JD.nullable JD.string) Nothing
        |> JDP.optional "inputPath" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from testEventPattern
-}
type alias TestEventPatternResponse =
    { result : Maybe Bool
    }



testEventPatternResponseDecoder : JD.Decoder TestEventPatternResponse
testEventPatternResponseDecoder =
    JDP.decode TestEventPatternResponse
        |> JDP.optional "result" (JD.nullable JD.bool) Nothing




