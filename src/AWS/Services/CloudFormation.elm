module AWS.Services.CloudFormation
    exposing
        ( config
        , cancelUpdateStack
        , continueUpdateRollback
        , ContinueUpdateRollbackOptions
        , createChangeSet
        , CreateChangeSetOptions
        , createStack
        , CreateStackOptions
        , deleteChangeSet
        , DeleteChangeSetOptions
        , deleteStack
        , DeleteStackOptions
        , describeAccountLimits
        , DescribeAccountLimitsOptions
        , describeChangeSet
        , DescribeChangeSetOptions
        , describeStackEvents
        , DescribeStackEventsOptions
        , describeStackResource
        , describeStackResources
        , DescribeStackResourcesOptions
        , describeStacks
        , DescribeStacksOptions
        , estimateTemplateCost
        , EstimateTemplateCostOptions
        , executeChangeSet
        , ExecuteChangeSetOptions
        , getStackPolicy
        , getTemplate
        , GetTemplateOptions
        , getTemplateSummary
        , GetTemplateSummaryOptions
        , listChangeSets
        , ListChangeSetsOptions
        , listExports
        , ListExportsOptions
        , listImports
        , ListImportsOptions
        , listStackResources
        , ListStackResourcesOptions
        , listStacks
        , ListStacksOptions
        , setStackPolicy
        , SetStackPolicyOptions
        , signalResource
        , updateStack
        , UpdateStackOptions
        , validateTemplate
        , ValidateTemplateOptions
        , AccountLimit
        , AlreadyExistsException
        , Capability(..)
        , Change
        , ChangeAction(..)
        , ChangeSetNotFoundException
        , ChangeSetStatus(..)
        , ChangeSetSummary
        , ChangeSetType(..)
        , ChangeSource(..)
        , ChangeType(..)
        , ContinueUpdateRollbackOutput
        , CreateChangeSetOutput
        , CreateStackOutput
        , DeleteChangeSetOutput
        , DescribeAccountLimitsOutput
        , DescribeChangeSetOutput
        , DescribeStackEventsOutput
        , DescribeStackResourceOutput
        , DescribeStackResourcesOutput
        , DescribeStacksOutput
        , EstimateTemplateCostOutput
        , EvaluationType(..)
        , ExecuteChangeSetOutput
        , ExecutionStatus(..)
        , Export
        , GetStackPolicyOutput
        , GetTemplateOutput
        , GetTemplateSummaryOutput
        , InsufficientCapabilitiesException
        , InvalidChangeSetStatusException
        , LimitExceededException
        , ListChangeSetsOutput
        , ListExportsOutput
        , ListImportsOutput
        , ListStackResourcesOutput
        , ListStacksOutput
        , OnFailure(..)
        , Output
        , Parameter
        , ParameterConstraints
        , ParameterDeclaration
        , Replacement(..)
        , RequiresRecreation(..)
        , ResourceAttribute(..)
        , ResourceChange
        , ResourceChangeDetail
        , ResourceSignalStatus(..)
        , ResourceStatus(..)
        , ResourceTargetDefinition
        , Stack
        , StackEvent
        , StackResource
        , StackResourceDetail
        , StackResourceSummary
        , StackStatus(..)
        , StackSummary
        , Tag
        , TemplateParameter
        , TemplateStage(..)
        , UpdateStackOutput
        , ValidateTemplateOutput
        )

{-| <fullname>AWS CloudFormation</fullname> <p>AWS CloudFormation allows you to create and manage AWS infrastructure deployments predictably and repeatedly. You can use AWS CloudFormation to leverage AWS products, such as Amazon Elastic Compute Cloud, Amazon Elastic Block Store, Amazon Simple Notification Service, Elastic Load Balancing, and Auto Scaling to build highly-reliable, highly scalable, cost-effective applications without creating or configuring the underlying AWS infrastructure.</p> <p>With AWS CloudFormation, you declare all of your resources and dependencies in a template file. The template defines a collection of resources as a single unit called a stack. AWS CloudFormation creates and deletes all member resources of the stack together and manages all dependencies between the resources for you.</p> <p>For more information about AWS CloudFormation, see the <a href="http://aws.amazon.com/cloudformation/">AWS CloudFormation Product Page</a>.</p> <p>Amazon CloudFormation makes use of other AWS products. For additional technical information about a specific AWS product, see its <a href="http://docs.aws.amazon.com/">technical documentation</a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [cancelUpdateStack](#cancelUpdateStack)
* [continueUpdateRollback](#continueUpdateRollback)
* [ContinueUpdateRollbackOptions](#ContinueUpdateRollbackOptions)
* [createChangeSet](#createChangeSet)
* [CreateChangeSetOptions](#CreateChangeSetOptions)
* [createStack](#createStack)
* [CreateStackOptions](#CreateStackOptions)
* [deleteChangeSet](#deleteChangeSet)
* [DeleteChangeSetOptions](#DeleteChangeSetOptions)
* [deleteStack](#deleteStack)
* [DeleteStackOptions](#DeleteStackOptions)
* [describeAccountLimits](#describeAccountLimits)
* [DescribeAccountLimitsOptions](#DescribeAccountLimitsOptions)
* [describeChangeSet](#describeChangeSet)
* [DescribeChangeSetOptions](#DescribeChangeSetOptions)
* [describeStackEvents](#describeStackEvents)
* [DescribeStackEventsOptions](#DescribeStackEventsOptions)
* [describeStackResource](#describeStackResource)
* [describeStackResources](#describeStackResources)
* [DescribeStackResourcesOptions](#DescribeStackResourcesOptions)
* [describeStacks](#describeStacks)
* [DescribeStacksOptions](#DescribeStacksOptions)
* [estimateTemplateCost](#estimateTemplateCost)
* [EstimateTemplateCostOptions](#EstimateTemplateCostOptions)
* [executeChangeSet](#executeChangeSet)
* [ExecuteChangeSetOptions](#ExecuteChangeSetOptions)
* [getStackPolicy](#getStackPolicy)
* [getTemplate](#getTemplate)
* [GetTemplateOptions](#GetTemplateOptions)
* [getTemplateSummary](#getTemplateSummary)
* [GetTemplateSummaryOptions](#GetTemplateSummaryOptions)
* [listChangeSets](#listChangeSets)
* [ListChangeSetsOptions](#ListChangeSetsOptions)
* [listExports](#listExports)
* [ListExportsOptions](#ListExportsOptions)
* [listImports](#listImports)
* [ListImportsOptions](#ListImportsOptions)
* [listStackResources](#listStackResources)
* [ListStackResourcesOptions](#ListStackResourcesOptions)
* [listStacks](#listStacks)
* [ListStacksOptions](#ListStacksOptions)
* [setStackPolicy](#setStackPolicy)
* [SetStackPolicyOptions](#SetStackPolicyOptions)
* [signalResource](#signalResource)
* [updateStack](#updateStack)
* [UpdateStackOptions](#UpdateStackOptions)
* [validateTemplate](#validateTemplate)
* [ValidateTemplateOptions](#ValidateTemplateOptions)


@docs cancelUpdateStack,continueUpdateRollback,ContinueUpdateRollbackOptions,createChangeSet,CreateChangeSetOptions,createStack,CreateStackOptions,deleteChangeSet,DeleteChangeSetOptions,deleteStack,DeleteStackOptions,describeAccountLimits,DescribeAccountLimitsOptions,describeChangeSet,DescribeChangeSetOptions,describeStackEvents,DescribeStackEventsOptions,describeStackResource,describeStackResources,DescribeStackResourcesOptions,describeStacks,DescribeStacksOptions,estimateTemplateCost,EstimateTemplateCostOptions,executeChangeSet,ExecuteChangeSetOptions,getStackPolicy,getTemplate,GetTemplateOptions,getTemplateSummary,GetTemplateSummaryOptions,listChangeSets,ListChangeSetsOptions,listExports,ListExportsOptions,listImports,ListImportsOptions,listStackResources,ListStackResourcesOptions,listStacks,ListStacksOptions,setStackPolicy,SetStackPolicyOptions,signalResource,updateStack,UpdateStackOptions,validateTemplate,ValidateTemplateOptions

## Responses

* [ContinueUpdateRollbackOutput](#ContinueUpdateRollbackOutput)
* [CreateChangeSetOutput](#CreateChangeSetOutput)
* [CreateStackOutput](#CreateStackOutput)
* [DeleteChangeSetOutput](#DeleteChangeSetOutput)
* [DescribeAccountLimitsOutput](#DescribeAccountLimitsOutput)
* [DescribeChangeSetOutput](#DescribeChangeSetOutput)
* [DescribeStackEventsOutput](#DescribeStackEventsOutput)
* [DescribeStackResourceOutput](#DescribeStackResourceOutput)
* [DescribeStackResourcesOutput](#DescribeStackResourcesOutput)
* [DescribeStacksOutput](#DescribeStacksOutput)
* [EstimateTemplateCostOutput](#EstimateTemplateCostOutput)
* [ExecuteChangeSetOutput](#ExecuteChangeSetOutput)
* [GetStackPolicyOutput](#GetStackPolicyOutput)
* [GetTemplateOutput](#GetTemplateOutput)
* [GetTemplateSummaryOutput](#GetTemplateSummaryOutput)
* [ListChangeSetsOutput](#ListChangeSetsOutput)
* [ListExportsOutput](#ListExportsOutput)
* [ListImportsOutput](#ListImportsOutput)
* [ListStackResourcesOutput](#ListStackResourcesOutput)
* [ListStacksOutput](#ListStacksOutput)
* [UpdateStackOutput](#UpdateStackOutput)
* [ValidateTemplateOutput](#ValidateTemplateOutput)


@docs ContinueUpdateRollbackOutput,CreateChangeSetOutput,CreateStackOutput,DeleteChangeSetOutput,DescribeAccountLimitsOutput,DescribeChangeSetOutput,DescribeStackEventsOutput,DescribeStackResourceOutput,DescribeStackResourcesOutput,DescribeStacksOutput,EstimateTemplateCostOutput,ExecuteChangeSetOutput,GetStackPolicyOutput,GetTemplateOutput,GetTemplateSummaryOutput,ListChangeSetsOutput,ListExportsOutput,ListImportsOutput,ListStackResourcesOutput,ListStacksOutput,UpdateStackOutput,ValidateTemplateOutput

## Records

* [AccountLimit](#AccountLimit)
* [Change](#Change)
* [ChangeSetSummary](#ChangeSetSummary)
* [Export](#Export)
* [Output](#Output)
* [Parameter](#Parameter)
* [ParameterConstraints](#ParameterConstraints)
* [ParameterDeclaration](#ParameterDeclaration)
* [ResourceChange](#ResourceChange)
* [ResourceChangeDetail](#ResourceChangeDetail)
* [ResourceTargetDefinition](#ResourceTargetDefinition)
* [Stack](#Stack)
* [StackEvent](#StackEvent)
* [StackResource](#StackResource)
* [StackResourceDetail](#StackResourceDetail)
* [StackResourceSummary](#StackResourceSummary)
* [StackSummary](#StackSummary)
* [Tag](#Tag)
* [TemplateParameter](#TemplateParameter)


@docs AccountLimit,Change,ChangeSetSummary,Export,Output,Parameter,ParameterConstraints,ParameterDeclaration,ResourceChange,ResourceChangeDetail,ResourceTargetDefinition,Stack,StackEvent,StackResource,StackResourceDetail,StackResourceSummary,StackSummary,Tag,TemplateParameter

## Unions

* [Capability](#Capability)
* [ChangeAction](#ChangeAction)
* [ChangeSetStatus](#ChangeSetStatus)
* [ChangeSetType](#ChangeSetType)
* [ChangeSource](#ChangeSource)
* [ChangeType](#ChangeType)
* [EvaluationType](#EvaluationType)
* [ExecutionStatus](#ExecutionStatus)
* [OnFailure](#OnFailure)
* [Replacement](#Replacement)
* [RequiresRecreation](#RequiresRecreation)
* [ResourceAttribute](#ResourceAttribute)
* [ResourceSignalStatus](#ResourceSignalStatus)
* [ResourceStatus](#ResourceStatus)
* [StackStatus](#StackStatus)
* [TemplateStage](#TemplateStage)


@docs Capability,ChangeAction,ChangeSetStatus,ChangeSetType,ChangeSource,ChangeType,EvaluationType,ExecutionStatus,OnFailure,Replacement,RequiresRecreation,ResourceAttribute,ResourceSignalStatus,ResourceStatus,StackStatus,TemplateStage

## Exceptions

* [AlreadyExistsException](#AlreadyExistsException)
* [ChangeSetNotFoundException](#ChangeSetNotFoundException)
* [InsufficientCapabilitiesException](#InsufficientCapabilitiesException)
* [InvalidChangeSetStatusException](#InvalidChangeSetStatusException)
* [LimitExceededException](#LimitExceededException)


@docs AlreadyExistsException,ChangeSetNotFoundException,InsufficientCapabilitiesException,InvalidChangeSetStatusException,LimitExceededException

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
        "cloudformation"
        "2010-05-15"
        "undefined"
        "AWSCLOUDFORMATION_20100515."
        "cloudformation.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Cancels an update on the specified stack. If the call completes successfully, the stack rolls back the update and reverts to the previous stack configuration.</p> <note> <p>You can cancel only stacks that are in the UPDATE_IN_PROGRESS state.</p> </note>

__Required Parameters__

* `stackName` __:__ `String`


-}
cancelUpdateStack :
    String
    -> AWS.Request ()
cancelUpdateStack stackName =
    AWS.Http.unsignedRequest
        "CancelUpdateStack"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>For a specified stack that is in the <code>UPDATE_ROLLBACK_FAILED</code> state, continues rolling it back to the <code>UPDATE_ROLLBACK_COMPLETE</code> state. Depending on the cause of the failure, you can manually <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed"> fix the error</a> and continue the rollback. By continuing the rollback, you can return your stack to a working state (the <code>UPDATE_ROLLBACK_COMPLETE</code> state), and then try to update the stack again.</p> <p>A stack goes into the <code>UPDATE_ROLLBACK_FAILED</code> state when AWS CloudFormation cannot roll back all changes after a failed stack update. For example, you might have a stack that is rolling back to an old database instance that was deleted outside of AWS CloudFormation. Because AWS CloudFormation doesn't know the database was deleted, it assumes that the database instance still exists and attempts to roll back to it, causing the update rollback to fail.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}
continueUpdateRollback :
    String
    -> (ContinueUpdateRollbackOptions -> ContinueUpdateRollbackOptions)
    -> AWS.Request ContinueUpdateRollbackOutput
continueUpdateRollback stackName setOptions =
  let
    options = setOptions (ContinueUpdateRollbackOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ContinueUpdateRollback"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        continueUpdateRollbackOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a continueUpdateRollback request
-}
type alias ContinueUpdateRollbackOptions =
    { roleARN : Maybe String
    , resourcesToSkip : Maybe (List String)
    }



{-| <p>Creates a list of changes for a stack. AWS CloudFormation generates the change set by comparing the template's information with the information that you submit. A change set can help you understand which resources AWS CloudFormation will change, and how it will change them, before you update your stack. Change sets allow you to check before making a change to avoid deleting or replacing critical resources.</p> <p>AWS CloudFormation doesn't make any changes to the stack when you create a change set. To make the specified changes, you must execute the change set by using the <a>ExecuteChangeSet</a> action.</p> <p>After the call successfully completes, AWS CloudFormation starts creating the change set. To check the status of the change set, use the <a>DescribeChangeSet</a> action.</p>

__Required Parameters__

* `stackName` __:__ `String`
* `changeSetName` __:__ `String`


-}
createChangeSet :
    String
    -> String
    -> (CreateChangeSetOptions -> CreateChangeSetOptions)
    -> AWS.Request CreateChangeSetOutput
createChangeSet stackName changeSetName setOptions =
  let
    options = setOptions (CreateChangeSetOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateChangeSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createChangeSetOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a createChangeSet request
-}
type alias CreateChangeSetOptions =
    { templateBody : Maybe String
    , templateURL : Maybe String
    , usePreviousTemplate : Maybe Bool
    , parameters : Maybe (List Parameter)
    , capabilities : Maybe (List Capability)
    , resourceTypes : Maybe (List String)
    , roleARN : Maybe String
    , notificationARNs : Maybe (List String)
    , tags : Maybe (List Tag)
    , clientToken : Maybe String
    , description : Maybe String
    , changeSetType : Maybe ChangeSetType
    }



{-| <p>Creates a stack as specified in the template. After the call completes successfully, the stack creation starts. You can check the status of the stack via the <a>DescribeStacks</a> API.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}
createStack :
    String
    -> (CreateStackOptions -> CreateStackOptions)
    -> AWS.Request CreateStackOutput
createStack stackName setOptions =
  let
    options = setOptions (CreateStackOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateStack"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createStackOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a createStack request
-}
type alias CreateStackOptions =
    { templateBody : Maybe String
    , templateURL : Maybe String
    , parameters : Maybe (List Parameter)
    , disableRollback : Maybe Bool
    , timeoutInMinutes : Maybe Int
    , notificationARNs : Maybe (List String)
    , capabilities : Maybe (List Capability)
    , resourceTypes : Maybe (List String)
    , roleARN : Maybe String
    , onFailure : Maybe OnFailure
    , stackPolicyBody : Maybe String
    , stackPolicyURL : Maybe String
    , tags : Maybe (List Tag)
    }



{-| <p>Deletes the specified change set. Deleting change sets ensures that no one executes the wrong change set.</p> <p>If the call successfully completes, AWS CloudFormation successfully deleted the change set.</p>

__Required Parameters__

* `changeSetName` __:__ `String`


-}
deleteChangeSet :
    String
    -> (DeleteChangeSetOptions -> DeleteChangeSetOptions)
    -> AWS.Request DeleteChangeSetOutput
deleteChangeSet changeSetName setOptions =
  let
    options = setOptions (DeleteChangeSetOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteChangeSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteChangeSetOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteChangeSet request
-}
type alias DeleteChangeSetOptions =
    { stackName : Maybe String
    }



{-| <p>Deletes a specified stack. Once the call completes successfully, stack deletion starts. Deleted stacks do not show up in the <a>DescribeStacks</a> API if the deletion has been completed successfully.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}
deleteStack :
    String
    -> (DeleteStackOptions -> DeleteStackOptions)
    -> AWS.Request ()
deleteStack stackName setOptions =
  let
    options = setOptions (DeleteStackOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteStack"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteStack request
-}
type alias DeleteStackOptions =
    { retainResources : Maybe (List String)
    , roleARN : Maybe String
    }



{-| <p>Retrieves your account's AWS CloudFormation limits, such as the maximum number of stacks that you can create in your account.</p>

__Required Parameters__



-}
describeAccountLimits :
    (DescribeAccountLimitsOptions -> DescribeAccountLimitsOptions)
    -> AWS.Request DescribeAccountLimitsOutput
describeAccountLimits setOptions =
  let
    options = setOptions (DescribeAccountLimitsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAccountLimits"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAccountLimitsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeAccountLimits request
-}
type alias DescribeAccountLimitsOptions =
    { nextToken : Maybe String
    }



{-| <p>Returns the inputs for the change set and a list of changes that AWS CloudFormation will make if you execute the change set. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html">Updating Stacks Using Change Sets</a> in the AWS CloudFormation User Guide.</p>

__Required Parameters__

* `changeSetName` __:__ `String`


-}
describeChangeSet :
    String
    -> (DescribeChangeSetOptions -> DescribeChangeSetOptions)
    -> AWS.Request DescribeChangeSetOutput
describeChangeSet changeSetName setOptions =
  let
    options = setOptions (DescribeChangeSetOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeChangeSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeChangeSetOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeChangeSet request
-}
type alias DescribeChangeSetOptions =
    { stackName : Maybe String
    , nextToken : Maybe String
    }



{-| <p>Returns all stack related events for a specified stack in reverse chronological order. For more information about a stack's event history, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/concept-stack.html">Stacks</a> in the AWS CloudFormation User Guide.</p> <note> <p>You can list events for stacks that have failed to create or have been deleted by specifying the unique stack identifier (stack ID).</p> </note>

__Required Parameters__



-}
describeStackEvents :
    (DescribeStackEventsOptions -> DescribeStackEventsOptions)
    -> AWS.Request DescribeStackEventsOutput
describeStackEvents setOptions =
  let
    options = setOptions (DescribeStackEventsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeStackEvents"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeStackEventsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeStackEvents request
-}
type alias DescribeStackEventsOptions =
    { stackName : Maybe String
    , nextToken : Maybe String
    }



{-| <p>Returns a description of the specified resource in the specified stack.</p> <p>For deleted stacks, DescribeStackResource returns resource information for up to 90 days after the stack has been deleted.</p>

__Required Parameters__

* `stackName` __:__ `String`
* `logicalResourceId` __:__ `String`


-}
describeStackResource :
    String
    -> String
    -> AWS.Request DescribeStackResourceOutput
describeStackResource stackName logicalResourceId =
    AWS.Http.unsignedRequest
        "DescribeStackResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeStackResourceOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns AWS resource descriptions for running and deleted stacks. If <code>StackName</code> is specified, all the associated resources that are part of the stack are returned. If <code>PhysicalResourceId</code> is specified, the associated resources of the stack that the resource belongs to are returned.</p> <note> <p>Only the first 100 resources will be returned. If your stack has more resources than this, you should use <code>ListStackResources</code> instead.</p> </note> <p>For deleted stacks, <code>DescribeStackResources</code> returns resource information for up to 90 days after the stack has been deleted.</p> <p>You must specify either <code>StackName</code> or <code>PhysicalResourceId</code>, but not both. In addition, you can specify <code>LogicalResourceId</code> to filter the returned result. For more information about resources, the <code>LogicalResourceId</code> and <code>PhysicalResourceId</code>, go to the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/">AWS CloudFormation User Guide</a>.</p> <note> <p>A <code>ValidationError</code> is returned if you specify both <code>StackName</code> and <code>PhysicalResourceId</code> in the same request.</p> </note>

__Required Parameters__



-}
describeStackResources :
    (DescribeStackResourcesOptions -> DescribeStackResourcesOptions)
    -> AWS.Request DescribeStackResourcesOutput
describeStackResources setOptions =
  let
    options = setOptions (DescribeStackResourcesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeStackResources"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeStackResourcesOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeStackResources request
-}
type alias DescribeStackResourcesOptions =
    { stackName : Maybe String
    , logicalResourceId : Maybe String
    , physicalResourceId : Maybe String
    }



{-| <p>Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created.</p> <note> <p>If the stack does not exist, an <code>AmazonCloudFormationException</code> is returned.</p> </note>

__Required Parameters__



-}
describeStacks :
    (DescribeStacksOptions -> DescribeStacksOptions)
    -> AWS.Request DescribeStacksOutput
describeStacks setOptions =
  let
    options = setOptions (DescribeStacksOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeStacks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeStacksOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeStacks request
-}
type alias DescribeStacksOptions =
    { stackName : Maybe String
    , nextToken : Maybe String
    }



{-| <p>Returns the estimated monthly cost of a template. The return value is an AWS Simple Monthly Calculator URL with a query string that describes the resources required to run the template.</p>

__Required Parameters__



-}
estimateTemplateCost :
    (EstimateTemplateCostOptions -> EstimateTemplateCostOptions)
    -> AWS.Request EstimateTemplateCostOutput
estimateTemplateCost setOptions =
  let
    options = setOptions (EstimateTemplateCostOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "EstimateTemplateCost"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        estimateTemplateCostOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a estimateTemplateCost request
-}
type alias EstimateTemplateCostOptions =
    { templateBody : Maybe String
    , templateURL : Maybe String
    , parameters : Maybe (List Parameter)
    }



{-| <p>Updates a stack using the input information that was provided when the specified change set was created. After the call successfully completes, AWS CloudFormation starts updating the stack. Use the <a>DescribeStacks</a> action to view the status of the update.</p> <p>When you execute a change set, AWS CloudFormation deletes all other change sets associated with the stack because they aren't valid for the updated stack.</p> <p>If a stack policy is associated with the stack, AWS CloudFormation enforces the policy during the update. You can't specify a temporary stack policy that overrides the current policy.</p>

__Required Parameters__

* `changeSetName` __:__ `String`


-}
executeChangeSet :
    String
    -> (ExecuteChangeSetOptions -> ExecuteChangeSetOptions)
    -> AWS.Request ExecuteChangeSetOutput
executeChangeSet changeSetName setOptions =
  let
    options = setOptions (ExecuteChangeSetOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ExecuteChangeSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        executeChangeSetOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a executeChangeSet request
-}
type alias ExecuteChangeSetOptions =
    { stackName : Maybe String
    }



{-| <p>Returns the stack policy for a specified stack. If a stack doesn't have a policy, a null value is returned.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}
getStackPolicy :
    String
    -> AWS.Request GetStackPolicyOutput
getStackPolicy stackName =
    AWS.Http.unsignedRequest
        "GetStackPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getStackPolicyOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the template body for a specified stack. You can get the template for running or deleted stacks.</p> <p>For deleted stacks, GetTemplate returns the template for up to 90 days after the stack has been deleted.</p> <note> <p> If the template does not exist, a <code>ValidationError</code> is returned. </p> </note>

__Required Parameters__



-}
getTemplate :
    (GetTemplateOptions -> GetTemplateOptions)
    -> AWS.Request GetTemplateOutput
getTemplate setOptions =
  let
    options = setOptions (GetTemplateOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetTemplate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getTemplateOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a getTemplate request
-}
type alias GetTemplateOptions =
    { stackName : Maybe String
    , changeSetName : Maybe String
    , templateStage : Maybe TemplateStage
    }



{-| <p>Returns information about a new or existing template. The <code>GetTemplateSummary</code> action is useful for viewing parameter information, such as default parameter values and parameter types, before you create or update a stack.</p> <p>You can use the <code>GetTemplateSummary</code> action when you submit a template, or you can get template information for a running or deleted stack.</p> <p>For deleted stacks, <code>GetTemplateSummary</code> returns the template information for up to 90 days after the stack has been deleted. If the template does not exist, a <code>ValidationError</code> is returned.</p>

__Required Parameters__



-}
getTemplateSummary :
    (GetTemplateSummaryOptions -> GetTemplateSummaryOptions)
    -> AWS.Request GetTemplateSummaryOutput
getTemplateSummary setOptions =
  let
    options = setOptions (GetTemplateSummaryOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetTemplateSummary"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getTemplateSummaryOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a getTemplateSummary request
-}
type alias GetTemplateSummaryOptions =
    { templateBody : Maybe String
    , templateURL : Maybe String
    , stackName : Maybe String
    }



{-| <p>Returns the ID and status of each active change set for a stack. For example, AWS CloudFormation lists change sets that are in the <code>CREATE_IN_PROGRESS</code> or <code>CREATE_PENDING</code> state.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}
listChangeSets :
    String
    -> (ListChangeSetsOptions -> ListChangeSetsOptions)
    -> AWS.Request ListChangeSetsOutput
listChangeSets stackName setOptions =
  let
    options = setOptions (ListChangeSetsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListChangeSets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listChangeSetsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listChangeSets request
-}
type alias ListChangeSetsOptions =
    { nextToken : Maybe String
    }



{-| <p>Lists all exported output values in the account and region in which you call this action. Use this action to see the exported output values that you can import into other stacks. To import values, use the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html"> <code>Fn::ImportValue</code> </a> function. </p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html"> AWS CloudFormation Export Stack Output Values</a>.</p>

__Required Parameters__



-}
listExports :
    (ListExportsOptions -> ListExportsOptions)
    -> AWS.Request ListExportsOutput
listExports setOptions =
  let
    options = setOptions (ListExportsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListExports"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listExportsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listExports request
-}
type alias ListExportsOptions =
    { nextToken : Maybe String
    }



{-| <p>Lists all stacks that are importing an exported output value. To modify or remove an exported output value, first use this action to see which stacks are using it. To see the exported output values in your account, see <a>ListExports</a>. </p> <p>For more information about importing an exported output value, see the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html"> <code>Fn::ImportValue</code> </a> function. </p>

__Required Parameters__

* `exportName` __:__ `String`


-}
listImports :
    String
    -> (ListImportsOptions -> ListImportsOptions)
    -> AWS.Request ListImportsOutput
listImports exportName setOptions =
  let
    options = setOptions (ListImportsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListImports"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listImportsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listImports request
-}
type alias ListImportsOptions =
    { nextToken : Maybe String
    }



{-| <p>Returns descriptions of all resources of the specified stack.</p> <p>For deleted stacks, ListStackResources returns resource information for up to 90 days after the stack has been deleted.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}
listStackResources :
    String
    -> (ListStackResourcesOptions -> ListStackResourcesOptions)
    -> AWS.Request ListStackResourcesOutput
listStackResources stackName setOptions =
  let
    options = setOptions (ListStackResourcesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListStackResources"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listStackResourcesOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listStackResources request
-}
type alias ListStackResourcesOptions =
    { nextToken : Maybe String
    }



{-| <p>Returns the summary information for stacks whose status matches the specified StackStatusFilter. Summary information for stacks that have been deleted is kept for 90 days after the stack is deleted. If no StackStatusFilter is specified, summary information for all stacks is returned (including existing stacks and stacks that have been deleted).</p>

__Required Parameters__



-}
listStacks :
    (ListStacksOptions -> ListStacksOptions)
    -> AWS.Request ListStacksOutput
listStacks setOptions =
  let
    options = setOptions (ListStacksOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListStacks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listStacksOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listStacks request
-}
type alias ListStacksOptions =
    { nextToken : Maybe String
    , stackStatusFilter : Maybe (List StackStatus)
    }



{-| <p>Sets a stack policy for a specified stack.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}
setStackPolicy :
    String
    -> (SetStackPolicyOptions -> SetStackPolicyOptions)
    -> AWS.Request ()
setStackPolicy stackName setOptions =
  let
    options = setOptions (SetStackPolicyOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SetStackPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a setStackPolicy request
-}
type alias SetStackPolicyOptions =
    { stackPolicyBody : Maybe String
    , stackPolicyURL : Maybe String
    }



{-| <p>Sends a signal to the specified resource with a success or failure status. You can use the SignalResource API in conjunction with a creation policy or update policy. AWS CloudFormation doesn't proceed with a stack creation or update until resources receive the required number of signals or the timeout period is exceeded. The SignalResource API is useful in cases where you want to send signals from anywhere other than an Amazon EC2 instance.</p>

__Required Parameters__

* `stackName` __:__ `String`
* `logicalResourceId` __:__ `String`
* `uniqueId` __:__ `String`
* `status` __:__ `ResourceSignalStatus`


-}
signalResource :
    String
    -> String
    -> String
    -> ResourceSignalStatus
    -> AWS.Request ()
signalResource stackName logicalResourceId uniqueId status =
    AWS.Http.unsignedRequest
        "SignalResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Updates a stack as specified in the template. After the call completes successfully, the stack update starts. You can check the status of the stack via the <a>DescribeStacks</a> action.</p> <p>To get a copy of the template for an existing stack, you can use the <a>GetTemplate</a> action.</p> <p>For more information about creating an update template, updating a stack, and monitoring the progress of the update, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html">Updating a Stack</a>.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}
updateStack :
    String
    -> (UpdateStackOptions -> UpdateStackOptions)
    -> AWS.Request UpdateStackOutput
updateStack stackName setOptions =
  let
    options = setOptions (UpdateStackOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateStack"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateStackOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateStack request
-}
type alias UpdateStackOptions =
    { templateBody : Maybe String
    , templateURL : Maybe String
    , usePreviousTemplate : Maybe Bool
    , stackPolicyDuringUpdateBody : Maybe String
    , stackPolicyDuringUpdateURL : Maybe String
    , parameters : Maybe (List Parameter)
    , capabilities : Maybe (List Capability)
    , resourceTypes : Maybe (List String)
    , roleARN : Maybe String
    , stackPolicyBody : Maybe String
    , stackPolicyURL : Maybe String
    , notificationARNs : Maybe (List String)
    , tags : Maybe (List Tag)
    }



{-| <p>Validates a specified template. AWS CloudFormation first checks if the template is valid JSON. If it isn't, AWS CloudFormation checks if the template is valid YAML. If both these checks fail, AWS CloudFormation returns a template validation error.</p>

__Required Parameters__



-}
validateTemplate :
    (ValidateTemplateOptions -> ValidateTemplateOptions)
    -> AWS.Request ValidateTemplateOutput
validateTemplate setOptions =
  let
    options = setOptions (ValidateTemplateOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ValidateTemplate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        validateTemplateOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a validateTemplate request
-}
type alias ValidateTemplateOptions =
    { templateBody : Maybe String
    , templateURL : Maybe String
    }




{-| <p>The AccountLimit data type.</p>
-}
type alias AccountLimit =
    { name : Maybe String
    , value : Maybe Int
    }



accountLimitDecoder : JD.Decoder AccountLimit
accountLimitDecoder =
    JDP.decode AccountLimit
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.int) Nothing




{-| <p>Resource with the name requested already exists.</p>
-}
type alias AlreadyExistsException =
    { 
    }



alreadyExistsExceptionDecoder : JD.Decoder AlreadyExistsException
alreadyExistsExceptionDecoder =
    JDP.decode AlreadyExistsException



{-| One of

* `Capability_CAPABILITY_IAM`
* `Capability_CAPABILITY_NAMED_IAM`

-}
type Capability
    = Capability_CAPABILITY_IAM
    | Capability_CAPABILITY_NAMED_IAM



capabilityDecoder : JD.Decoder Capability
capabilityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CAPABILITY_IAM" ->
                        JD.succeed Capability_CAPABILITY_IAM

                    "CAPABILITY_NAMED_IAM" ->
                        JD.succeed Capability_CAPABILITY_NAMED_IAM


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The <code>Change</code> structure describes the changes AWS CloudFormation will perform if you execute the change set.</p>
-}
type alias Change =
    { type_ : Maybe ChangeType
    , resourceChange : Maybe ResourceChange
    }



changeDecoder : JD.Decoder Change
changeDecoder =
    JDP.decode Change
        |> JDP.optional "type_" (JD.nullable changeTypeDecoder) Nothing
        |> JDP.optional "resourceChange" (JD.nullable resourceChangeDecoder) Nothing




{-| One of

* `ChangeAction_Add`
* `ChangeAction_Modify`
* `ChangeAction_Remove`

-}
type ChangeAction
    = ChangeAction_Add
    | ChangeAction_Modify
    | ChangeAction_Remove



changeActionDecoder : JD.Decoder ChangeAction
changeActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Add" ->
                        JD.succeed ChangeAction_Add

                    "Modify" ->
                        JD.succeed ChangeAction_Modify

                    "Remove" ->
                        JD.succeed ChangeAction_Remove


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The specified change set name or ID doesn't exit. To view valid change sets for a stack, use the <code>ListChangeSets</code> action.</p>
-}
type alias ChangeSetNotFoundException =
    { 
    }



changeSetNotFoundExceptionDecoder : JD.Decoder ChangeSetNotFoundException
changeSetNotFoundExceptionDecoder =
    JDP.decode ChangeSetNotFoundException



{-| One of

* `ChangeSetStatus_CREATE_PENDING`
* `ChangeSetStatus_CREATE_IN_PROGRESS`
* `ChangeSetStatus_CREATE_COMPLETE`
* `ChangeSetStatus_DELETE_COMPLETE`
* `ChangeSetStatus_FAILED`

-}
type ChangeSetStatus
    = ChangeSetStatus_CREATE_PENDING
    | ChangeSetStatus_CREATE_IN_PROGRESS
    | ChangeSetStatus_CREATE_COMPLETE
    | ChangeSetStatus_DELETE_COMPLETE
    | ChangeSetStatus_FAILED



changeSetStatusDecoder : JD.Decoder ChangeSetStatus
changeSetStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE_PENDING" ->
                        JD.succeed ChangeSetStatus_CREATE_PENDING

                    "CREATE_IN_PROGRESS" ->
                        JD.succeed ChangeSetStatus_CREATE_IN_PROGRESS

                    "CREATE_COMPLETE" ->
                        JD.succeed ChangeSetStatus_CREATE_COMPLETE

                    "DELETE_COMPLETE" ->
                        JD.succeed ChangeSetStatus_DELETE_COMPLETE

                    "FAILED" ->
                        JD.succeed ChangeSetStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The <code>ChangeSetSummary</code> structure describes a change set, its status, and the stack with which it's associated.</p>
-}
type alias ChangeSetSummary =
    { stackId : Maybe String
    , stackName : Maybe String
    , changeSetId : Maybe String
    , changeSetName : Maybe String
    , executionStatus : Maybe ExecutionStatus
    , status : Maybe ChangeSetStatus
    , statusReason : Maybe String
    , creationTime : Maybe Date
    , description : Maybe String
    }



changeSetSummaryDecoder : JD.Decoder ChangeSetSummary
changeSetSummaryDecoder =
    JDP.decode ChangeSetSummary
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "stackName" (JD.nullable JD.string) Nothing
        |> JDP.optional "changeSetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "changeSetName" (JD.nullable JD.string) Nothing
        |> JDP.optional "executionStatus" (JD.nullable executionStatusDecoder) Nothing
        |> JDP.optional "status" (JD.nullable changeSetStatusDecoder) Nothing
        |> JDP.optional "statusReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| One of

* `ChangeSetType_CREATE`
* `ChangeSetType_UPDATE`

-}
type ChangeSetType
    = ChangeSetType_CREATE
    | ChangeSetType_UPDATE



changeSetTypeDecoder : JD.Decoder ChangeSetType
changeSetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE" ->
                        JD.succeed ChangeSetType_CREATE

                    "UPDATE" ->
                        JD.succeed ChangeSetType_UPDATE


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ChangeSource_ResourceReference`
* `ChangeSource_ParameterReference`
* `ChangeSource_ResourceAttribute`
* `ChangeSource_DirectModification`
* `ChangeSource_Automatic`

-}
type ChangeSource
    = ChangeSource_ResourceReference
    | ChangeSource_ParameterReference
    | ChangeSource_ResourceAttribute
    | ChangeSource_DirectModification
    | ChangeSource_Automatic



changeSourceDecoder : JD.Decoder ChangeSource
changeSourceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ResourceReference" ->
                        JD.succeed ChangeSource_ResourceReference

                    "ParameterReference" ->
                        JD.succeed ChangeSource_ParameterReference

                    "ResourceAttribute" ->
                        JD.succeed ChangeSource_ResourceAttribute

                    "DirectModification" ->
                        JD.succeed ChangeSource_DirectModification

                    "Automatic" ->
                        JD.succeed ChangeSource_Automatic


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ChangeType_Resource`

-}
type ChangeType
    = ChangeType_Resource



changeTypeDecoder : JD.Decoder ChangeType
changeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Resource" ->
                        JD.succeed ChangeType_Resource


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from continueUpdateRollba
-}
type alias ContinueUpdateRollbackOutput =
    { 
    }



continueUpdateRollbackOutputDecoder : JD.Decoder ContinueUpdateRollbackOutput
continueUpdateRollbackOutputDecoder =
    JDP.decode ContinueUpdateRollbackOutput



{-| Type of HTTP response from createChangeS
-}
type alias CreateChangeSetOutput =
    { id : Maybe String
    , stackId : Maybe String
    }



createChangeSetOutputDecoder : JD.Decoder CreateChangeSetOutput
createChangeSetOutputDecoder =
    JDP.decode CreateChangeSetOutput
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createSta
-}
type alias CreateStackOutput =
    { stackId : Maybe String
    }



createStackOutputDecoder : JD.Decoder CreateStackOutput
createStackOutputDecoder =
    JDP.decode CreateStackOutput
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteChangeS
-}
type alias DeleteChangeSetOutput =
    { 
    }



deleteChangeSetOutputDecoder : JD.Decoder DeleteChangeSetOutput
deleteChangeSetOutputDecoder =
    JDP.decode DeleteChangeSetOutput



{-| Type of HTTP response from describeAccountLimi
-}
type alias DescribeAccountLimitsOutput =
    { accountLimits : Maybe (List AccountLimit)
    , nextToken : Maybe String
    }



describeAccountLimitsOutputDecoder : JD.Decoder DescribeAccountLimitsOutput
describeAccountLimitsOutputDecoder =
    JDP.decode DescribeAccountLimitsOutput
        |> JDP.optional "accountLimits" (JD.nullable (JD.list accountLimitDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeChangeS
-}
type alias DescribeChangeSetOutput =
    { changeSetName : Maybe String
    , changeSetId : Maybe String
    , stackId : Maybe String
    , stackName : Maybe String
    , description : Maybe String
    , parameters : Maybe (List Parameter)
    , creationTime : Maybe Date
    , executionStatus : Maybe ExecutionStatus
    , status : Maybe ChangeSetStatus
    , statusReason : Maybe String
    , notificationARNs : Maybe (List String)
    , capabilities : Maybe (List Capability)
    , tags : Maybe (List Tag)
    , changes : Maybe (List Change)
    , nextToken : Maybe String
    }



describeChangeSetOutputDecoder : JD.Decoder DescribeChangeSetOutput
describeChangeSetOutputDecoder =
    JDP.decode DescribeChangeSetOutput
        |> JDP.optional "changeSetName" (JD.nullable JD.string) Nothing
        |> JDP.optional "changeSetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "stackName" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameters" (JD.nullable (JD.list parameterDecoder)) Nothing
        |> JDP.optional "creationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "executionStatus" (JD.nullable executionStatusDecoder) Nothing
        |> JDP.optional "status" (JD.nullable changeSetStatusDecoder) Nothing
        |> JDP.optional "statusReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "notificationARNs" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "capabilities" (JD.nullable (JD.list capabilityDecoder)) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "changes" (JD.nullable (JD.list changeDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeStackEven
-}
type alias DescribeStackEventsOutput =
    { stackEvents : Maybe (List StackEvent)
    , nextToken : Maybe String
    }



describeStackEventsOutputDecoder : JD.Decoder DescribeStackEventsOutput
describeStackEventsOutputDecoder =
    JDP.decode DescribeStackEventsOutput
        |> JDP.optional "stackEvents" (JD.nullable (JD.list stackEventDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeStackResour
-}
type alias DescribeStackResourceOutput =
    { stackResourceDetail : Maybe StackResourceDetail
    }



describeStackResourceOutputDecoder : JD.Decoder DescribeStackResourceOutput
describeStackResourceOutputDecoder =
    JDP.decode DescribeStackResourceOutput
        |> JDP.optional "stackResourceDetail" (JD.nullable stackResourceDetailDecoder) Nothing




{-| Type of HTTP response from describeStackResourc
-}
type alias DescribeStackResourcesOutput =
    { stackResources : Maybe (List StackResource)
    }



describeStackResourcesOutputDecoder : JD.Decoder DescribeStackResourcesOutput
describeStackResourcesOutputDecoder =
    JDP.decode DescribeStackResourcesOutput
        |> JDP.optional "stackResources" (JD.nullable (JD.list stackResourceDecoder)) Nothing




{-| Type of HTTP response from describeStac
-}
type alias DescribeStacksOutput =
    { stacks : Maybe (List Stack)
    , nextToken : Maybe String
    }



describeStacksOutputDecoder : JD.Decoder DescribeStacksOutput
describeStacksOutputDecoder =
    JDP.decode DescribeStacksOutput
        |> JDP.optional "stacks" (JD.nullable (JD.list stackDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from estimateTemplateCo
-}
type alias EstimateTemplateCostOutput =
    { url : Maybe String
    }



estimateTemplateCostOutputDecoder : JD.Decoder EstimateTemplateCostOutput
estimateTemplateCostOutputDecoder =
    JDP.decode EstimateTemplateCostOutput
        |> JDP.optional "url" (JD.nullable JD.string) Nothing




{-| One of

* `EvaluationType_Static`
* `EvaluationType_Dynamic`

-}
type EvaluationType
    = EvaluationType_Static
    | EvaluationType_Dynamic



evaluationTypeDecoder : JD.Decoder EvaluationType
evaluationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Static" ->
                        JD.succeed EvaluationType_Static

                    "Dynamic" ->
                        JD.succeed EvaluationType_Dynamic


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from executeChangeS
-}
type alias ExecuteChangeSetOutput =
    { 
    }



executeChangeSetOutputDecoder : JD.Decoder ExecuteChangeSetOutput
executeChangeSetOutputDecoder =
    JDP.decode ExecuteChangeSetOutput



{-| One of

* `ExecutionStatus_UNAVAILABLE`
* `ExecutionStatus_AVAILABLE`
* `ExecutionStatus_EXECUTE_IN_PROGRESS`
* `ExecutionStatus_EXECUTE_COMPLETE`
* `ExecutionStatus_EXECUTE_FAILED`
* `ExecutionStatus_OBSOLETE`

-}
type ExecutionStatus
    = ExecutionStatus_UNAVAILABLE
    | ExecutionStatus_AVAILABLE
    | ExecutionStatus_EXECUTE_IN_PROGRESS
    | ExecutionStatus_EXECUTE_COMPLETE
    | ExecutionStatus_EXECUTE_FAILED
    | ExecutionStatus_OBSOLETE



executionStatusDecoder : JD.Decoder ExecutionStatus
executionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNAVAILABLE" ->
                        JD.succeed ExecutionStatus_UNAVAILABLE

                    "AVAILABLE" ->
                        JD.succeed ExecutionStatus_AVAILABLE

                    "EXECUTE_IN_PROGRESS" ->
                        JD.succeed ExecutionStatus_EXECUTE_IN_PROGRESS

                    "EXECUTE_COMPLETE" ->
                        JD.succeed ExecutionStatus_EXECUTE_COMPLETE

                    "EXECUTE_FAILED" ->
                        JD.succeed ExecutionStatus_EXECUTE_FAILED

                    "OBSOLETE" ->
                        JD.succeed ExecutionStatus_OBSOLETE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The <code>Export</code> structure describes the exported output values for a stack.</p>
-}
type alias Export =
    { exportingStackId : Maybe String
    , name : Maybe String
    , value : Maybe String
    }



exportDecoder : JD.Decoder Export
exportDecoder =
    JDP.decode Export
        |> JDP.optional "exportingStackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getStackPoli
-}
type alias GetStackPolicyOutput =
    { stackPolicyBody : Maybe String
    }



getStackPolicyOutputDecoder : JD.Decoder GetStackPolicyOutput
getStackPolicyOutputDecoder =
    JDP.decode GetStackPolicyOutput
        |> JDP.optional "stackPolicyBody" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getTempla
-}
type alias GetTemplateOutput =
    { templateBody : Maybe String
    , stagesAvailable : Maybe (List TemplateStage)
    }



getTemplateOutputDecoder : JD.Decoder GetTemplateOutput
getTemplateOutputDecoder =
    JDP.decode GetTemplateOutput
        |> JDP.optional "templateBody" (JD.nullable JD.string) Nothing
        |> JDP.optional "stagesAvailable" (JD.nullable (JD.list templateStageDecoder)) Nothing




{-| Type of HTTP response from getTemplateSumma
-}
type alias GetTemplateSummaryOutput =
    { parameters : Maybe (List ParameterDeclaration)
    , description : Maybe String
    , capabilities : Maybe (List Capability)
    , capabilitiesReason : Maybe String
    , resourceTypes : Maybe (List String)
    , version : Maybe String
    , metadata : Maybe String
    , declaredTransforms : Maybe (List String)
    }



getTemplateSummaryOutputDecoder : JD.Decoder GetTemplateSummaryOutput
getTemplateSummaryOutputDecoder =
    JDP.decode GetTemplateSummaryOutput
        |> JDP.optional "parameters" (JD.nullable (JD.list parameterDeclarationDecoder)) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "capabilities" (JD.nullable (JD.list capabilityDecoder)) Nothing
        |> JDP.optional "capabilitiesReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceTypes" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "version" (JD.nullable JD.string) Nothing
        |> JDP.optional "metadata" (JD.nullable JD.string) Nothing
        |> JDP.optional "declaredTransforms" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>The template contains resources with capabilities that were not specified in the Capabilities parameter.</p>
-}
type alias InsufficientCapabilitiesException =
    { 
    }



insufficientCapabilitiesExceptionDecoder : JD.Decoder InsufficientCapabilitiesException
insufficientCapabilitiesExceptionDecoder =
    JDP.decode InsufficientCapabilitiesException



{-| <p>The specified change set cannot be used to update the stack. For example, the change set status might be <code>CREATE_IN_PROGRESS</code> or the stack status might be <code>UPDATE_IN_PROGRESS</code>.</p>
-}
type alias InvalidChangeSetStatusException =
    { 
    }



invalidChangeSetStatusExceptionDecoder : JD.Decoder InvalidChangeSetStatusException
invalidChangeSetStatusExceptionDecoder =
    JDP.decode InvalidChangeSetStatusException



{-| <p>Quota for the resource has already been reached.</p>
-}
type alias LimitExceededException =
    { 
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException



{-| Type of HTTP response from listChangeSe
-}
type alias ListChangeSetsOutput =
    { summaries : Maybe (List ChangeSetSummary)
    , nextToken : Maybe String
    }



listChangeSetsOutputDecoder : JD.Decoder ListChangeSetsOutput
listChangeSetsOutputDecoder =
    JDP.decode ListChangeSetsOutput
        |> JDP.optional "summaries" (JD.nullable (JD.list changeSetSummaryDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listExpor
-}
type alias ListExportsOutput =
    { exports : Maybe (List Export)
    , nextToken : Maybe String
    }



listExportsOutputDecoder : JD.Decoder ListExportsOutput
listExportsOutputDecoder =
    JDP.decode ListExportsOutput
        |> JDP.optional "exports" (JD.nullable (JD.list exportDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listImpor
-}
type alias ListImportsOutput =
    { imports : Maybe (List String)
    , nextToken : Maybe String
    }



listImportsOutputDecoder : JD.Decoder ListImportsOutput
listImportsOutputDecoder =
    JDP.decode ListImportsOutput
        |> JDP.optional "imports" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listStackResourc
-}
type alias ListStackResourcesOutput =
    { stackResourceSummaries : Maybe (List StackResourceSummary)
    , nextToken : Maybe String
    }



listStackResourcesOutputDecoder : JD.Decoder ListStackResourcesOutput
listStackResourcesOutputDecoder =
    JDP.decode ListStackResourcesOutput
        |> JDP.optional "stackResourceSummaries" (JD.nullable (JD.list stackResourceSummaryDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listStac
-}
type alias ListStacksOutput =
    { stackSummaries : Maybe (List StackSummary)
    , nextToken : Maybe String
    }



listStacksOutputDecoder : JD.Decoder ListStacksOutput
listStacksOutputDecoder =
    JDP.decode ListStacksOutput
        |> JDP.optional "stackSummaries" (JD.nullable (JD.list stackSummaryDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| One of

* `OnFailure_DO_NOTHING`
* `OnFailure_ROLLBACK`
* `OnFailure_DELETE`

-}
type OnFailure
    = OnFailure_DO_NOTHING
    | OnFailure_ROLLBACK
    | OnFailure_DELETE



onFailureDecoder : JD.Decoder OnFailure
onFailureDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DO_NOTHING" ->
                        JD.succeed OnFailure_DO_NOTHING

                    "ROLLBACK" ->
                        JD.succeed OnFailure_ROLLBACK

                    "DELETE" ->
                        JD.succeed OnFailure_DELETE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The Output data type.</p>
-}
type alias Output =
    { outputKey : Maybe String
    , outputValue : Maybe String
    , description : Maybe String
    }



outputDecoder : JD.Decoder Output
outputDecoder =
    JDP.decode Output
        |> JDP.optional "outputKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>The Parameter data type.</p>
-}
type alias Parameter =
    { parameterKey : Maybe String
    , parameterValue : Maybe String
    , usePreviousValue : Maybe Bool
    }



parameterDecoder : JD.Decoder Parameter
parameterDecoder =
    JDP.decode Parameter
        |> JDP.optional "parameterKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameterValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "usePreviousValue" (JD.nullable JD.bool) Nothing




{-| <p>A set of criteria that AWS CloudFormation uses to validate parameter values. Although other constraints might be defined in the stack template, AWS CloudFormation returns only the <code>AllowedValues</code> property.</p>
-}
type alias ParameterConstraints =
    { allowedValues : Maybe (List String)
    }



parameterConstraintsDecoder : JD.Decoder ParameterConstraints
parameterConstraintsDecoder =
    JDP.decode ParameterConstraints
        |> JDP.optional "allowedValues" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>The ParameterDeclaration data type.</p>
-}
type alias ParameterDeclaration =
    { parameterKey : Maybe String
    , defaultValue : Maybe String
    , parameterType : Maybe String
    , noEcho : Maybe Bool
    , description : Maybe String
    , parameterConstraints : Maybe ParameterConstraints
    }



parameterDeclarationDecoder : JD.Decoder ParameterDeclaration
parameterDeclarationDecoder =
    JDP.decode ParameterDeclaration
        |> JDP.optional "parameterKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameterType" (JD.nullable JD.string) Nothing
        |> JDP.optional "noEcho" (JD.nullable JD.bool) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameterConstraints" (JD.nullable parameterConstraintsDecoder) Nothing




{-| One of

* `Replacement_True`
* `Replacement_False`
* `Replacement_Conditional`

-}
type Replacement
    = Replacement_True
    | Replacement_False
    | Replacement_Conditional



replacementDecoder : JD.Decoder Replacement
replacementDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "True" ->
                        JD.succeed Replacement_True

                    "False" ->
                        JD.succeed Replacement_False

                    "Conditional" ->
                        JD.succeed Replacement_Conditional


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `RequiresRecreation_Never`
* `RequiresRecreation_Conditionally`
* `RequiresRecreation_Always`

-}
type RequiresRecreation
    = RequiresRecreation_Never
    | RequiresRecreation_Conditionally
    | RequiresRecreation_Always



requiresRecreationDecoder : JD.Decoder RequiresRecreation
requiresRecreationDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Never" ->
                        JD.succeed RequiresRecreation_Never

                    "Conditionally" ->
                        JD.succeed RequiresRecreation_Conditionally

                    "Always" ->
                        JD.succeed RequiresRecreation_Always


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ResourceAttribute_Properties`
* `ResourceAttribute_Metadata`
* `ResourceAttribute_CreationPolicy`
* `ResourceAttribute_UpdatePolicy`
* `ResourceAttribute_DeletionPolicy`
* `ResourceAttribute_Tags`

-}
type ResourceAttribute
    = ResourceAttribute_Properties
    | ResourceAttribute_Metadata
    | ResourceAttribute_CreationPolicy
    | ResourceAttribute_UpdatePolicy
    | ResourceAttribute_DeletionPolicy
    | ResourceAttribute_Tags



resourceAttributeDecoder : JD.Decoder ResourceAttribute
resourceAttributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Properties" ->
                        JD.succeed ResourceAttribute_Properties

                    "Metadata" ->
                        JD.succeed ResourceAttribute_Metadata

                    "CreationPolicy" ->
                        JD.succeed ResourceAttribute_CreationPolicy

                    "UpdatePolicy" ->
                        JD.succeed ResourceAttribute_UpdatePolicy

                    "DeletionPolicy" ->
                        JD.succeed ResourceAttribute_DeletionPolicy

                    "Tags" ->
                        JD.succeed ResourceAttribute_Tags


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The <code>ResourceChange</code> structure describes the resource and the action that AWS CloudFormation will perform on it if you execute this change set.</p>
-}
type alias ResourceChange =
    { action : Maybe ChangeAction
    , logicalResourceId : Maybe String
    , physicalResourceId : Maybe String
    , resourceType : Maybe String
    , replacement : Maybe Replacement
    , scope : Maybe (List ResourceAttribute)
    , details : Maybe (List ResourceChangeDetail)
    }



resourceChangeDecoder : JD.Decoder ResourceChange
resourceChangeDecoder =
    JDP.decode ResourceChange
        |> JDP.optional "action" (JD.nullable changeActionDecoder) Nothing
        |> JDP.optional "logicalResourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "physicalResourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "replacement" (JD.nullable replacementDecoder) Nothing
        |> JDP.optional "scope" (JD.nullable (JD.list resourceAttributeDecoder)) Nothing
        |> JDP.optional "details" (JD.nullable (JD.list resourceChangeDetailDecoder)) Nothing




{-| <p>For a resource with <code>Modify</code> as the action, the <code>ResourceChange</code> structure describes the changes AWS CloudFormation will make to that resource.</p>
-}
type alias ResourceChangeDetail =
    { target : Maybe ResourceTargetDefinition
    , evaluation : Maybe EvaluationType
    , changeSource : Maybe ChangeSource
    , causingEntity : Maybe String
    }



resourceChangeDetailDecoder : JD.Decoder ResourceChangeDetail
resourceChangeDetailDecoder =
    JDP.decode ResourceChangeDetail
        |> JDP.optional "target" (JD.nullable resourceTargetDefinitionDecoder) Nothing
        |> JDP.optional "evaluation" (JD.nullable evaluationTypeDecoder) Nothing
        |> JDP.optional "changeSource" (JD.nullable changeSourceDecoder) Nothing
        |> JDP.optional "causingEntity" (JD.nullable JD.string) Nothing




{-| One of

* `ResourceSignalStatus_SUCCESS`
* `ResourceSignalStatus_FAILURE`

-}
type ResourceSignalStatus
    = ResourceSignalStatus_SUCCESS
    | ResourceSignalStatus_FAILURE



resourceSignalStatusDecoder : JD.Decoder ResourceSignalStatus
resourceSignalStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUCCESS" ->
                        JD.succeed ResourceSignalStatus_SUCCESS

                    "FAILURE" ->
                        JD.succeed ResourceSignalStatus_FAILURE


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ResourceStatus_CREATE_IN_PROGRESS`
* `ResourceStatus_CREATE_FAILED`
* `ResourceStatus_CREATE_COMPLETE`
* `ResourceStatus_DELETE_IN_PROGRESS`
* `ResourceStatus_DELETE_FAILED`
* `ResourceStatus_DELETE_COMPLETE`
* `ResourceStatus_DELETE_SKIPPED`
* `ResourceStatus_UPDATE_IN_PROGRESS`
* `ResourceStatus_UPDATE_FAILED`
* `ResourceStatus_UPDATE_COMPLETE`

-}
type ResourceStatus
    = ResourceStatus_CREATE_IN_PROGRESS
    | ResourceStatus_CREATE_FAILED
    | ResourceStatus_CREATE_COMPLETE
    | ResourceStatus_DELETE_IN_PROGRESS
    | ResourceStatus_DELETE_FAILED
    | ResourceStatus_DELETE_COMPLETE
    | ResourceStatus_DELETE_SKIPPED
    | ResourceStatus_UPDATE_IN_PROGRESS
    | ResourceStatus_UPDATE_FAILED
    | ResourceStatus_UPDATE_COMPLETE



resourceStatusDecoder : JD.Decoder ResourceStatus
resourceStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE_IN_PROGRESS" ->
                        JD.succeed ResourceStatus_CREATE_IN_PROGRESS

                    "CREATE_FAILED" ->
                        JD.succeed ResourceStatus_CREATE_FAILED

                    "CREATE_COMPLETE" ->
                        JD.succeed ResourceStatus_CREATE_COMPLETE

                    "DELETE_IN_PROGRESS" ->
                        JD.succeed ResourceStatus_DELETE_IN_PROGRESS

                    "DELETE_FAILED" ->
                        JD.succeed ResourceStatus_DELETE_FAILED

                    "DELETE_COMPLETE" ->
                        JD.succeed ResourceStatus_DELETE_COMPLETE

                    "DELETE_SKIPPED" ->
                        JD.succeed ResourceStatus_DELETE_SKIPPED

                    "UPDATE_IN_PROGRESS" ->
                        JD.succeed ResourceStatus_UPDATE_IN_PROGRESS

                    "UPDATE_FAILED" ->
                        JD.succeed ResourceStatus_UPDATE_FAILED

                    "UPDATE_COMPLETE" ->
                        JD.succeed ResourceStatus_UPDATE_COMPLETE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The field that AWS CloudFormation will change, such as the name of a resource's property, and whether the resource will be recreated.</p>
-}
type alias ResourceTargetDefinition =
    { attribute : Maybe ResourceAttribute
    , name : Maybe String
    , requiresRecreation : Maybe RequiresRecreation
    }



resourceTargetDefinitionDecoder : JD.Decoder ResourceTargetDefinition
resourceTargetDefinitionDecoder =
    JDP.decode ResourceTargetDefinition
        |> JDP.optional "attribute" (JD.nullable resourceAttributeDecoder) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "requiresRecreation" (JD.nullable requiresRecreationDecoder) Nothing




{-| <p>The Stack data type.</p>
-}
type alias Stack =
    { stackId : Maybe String
    , stackName : String
    , changeSetId : Maybe String
    , description : Maybe String
    , parameters : Maybe (List Parameter)
    , creationTime : Date
    , lastUpdatedTime : Maybe Date
    , stackStatus : StackStatus
    , stackStatusReason : Maybe String
    , disableRollback : Maybe Bool
    , notificationARNs : Maybe (List String)
    , timeoutInMinutes : Maybe Int
    , capabilities : Maybe (List Capability)
    , outputs : Maybe (List Output)
    , roleARN : Maybe String
    , tags : Maybe (List Tag)
    }



stackDecoder : JD.Decoder Stack
stackDecoder =
    JDP.decode Stack
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.required "stackName" JD.string
        |> JDP.optional "changeSetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameters" (JD.nullable (JD.list parameterDecoder)) Nothing
        |> JDP.required "creationTime" JDX.date
        |> JDP.optional "lastUpdatedTime" (JD.nullable JDX.date) Nothing
        |> JDP.required "stackStatus" stackStatusDecoder
        |> JDP.optional "stackStatusReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "disableRollback" (JD.nullable JD.bool) Nothing
        |> JDP.optional "notificationARNs" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "timeoutInMinutes" (JD.nullable JD.int) Nothing
        |> JDP.optional "capabilities" (JD.nullable (JD.list capabilityDecoder)) Nothing
        |> JDP.optional "outputs" (JD.nullable (JD.list outputDecoder)) Nothing
        |> JDP.optional "roleARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>The StackEvent data type.</p>
-}
type alias StackEvent =
    { stackId : String
    , eventId : String
    , stackName : String
    , logicalResourceId : Maybe String
    , physicalResourceId : Maybe String
    , resourceType : Maybe String
    , timestamp : Date
    , resourceStatus : Maybe ResourceStatus
    , resourceStatusReason : Maybe String
    , resourceProperties : Maybe String
    }



stackEventDecoder : JD.Decoder StackEvent
stackEventDecoder =
    JDP.decode StackEvent
        |> JDP.required "stackId" JD.string
        |> JDP.required "eventId" JD.string
        |> JDP.required "stackName" JD.string
        |> JDP.optional "logicalResourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "physicalResourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceType" (JD.nullable JD.string) Nothing
        |> JDP.required "timestamp" JDX.date
        |> JDP.optional "resourceStatus" (JD.nullable resourceStatusDecoder) Nothing
        |> JDP.optional "resourceStatusReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceProperties" (JD.nullable JD.string) Nothing




{-| <p>The StackResource data type.</p>
-}
type alias StackResource =
    { stackName : Maybe String
    , stackId : Maybe String
    , logicalResourceId : String
    , physicalResourceId : Maybe String
    , resourceType : String
    , timestamp : Date
    , resourceStatus : ResourceStatus
    , resourceStatusReason : Maybe String
    , description : Maybe String
    }



stackResourceDecoder : JD.Decoder StackResource
stackResourceDecoder =
    JDP.decode StackResource
        |> JDP.optional "stackName" (JD.nullable JD.string) Nothing
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.required "logicalResourceId" JD.string
        |> JDP.optional "physicalResourceId" (JD.nullable JD.string) Nothing
        |> JDP.required "resourceType" JD.string
        |> JDP.required "timestamp" JDX.date
        |> JDP.required "resourceStatus" resourceStatusDecoder
        |> JDP.optional "resourceStatusReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>Contains detailed information about the specified stack resource.</p>
-}
type alias StackResourceDetail =
    { stackName : Maybe String
    , stackId : Maybe String
    , logicalResourceId : String
    , physicalResourceId : Maybe String
    , resourceType : String
    , lastUpdatedTimestamp : Date
    , resourceStatus : ResourceStatus
    , resourceStatusReason : Maybe String
    , description : Maybe String
    , metadata : Maybe String
    }



stackResourceDetailDecoder : JD.Decoder StackResourceDetail
stackResourceDetailDecoder =
    JDP.decode StackResourceDetail
        |> JDP.optional "stackName" (JD.nullable JD.string) Nothing
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.required "logicalResourceId" JD.string
        |> JDP.optional "physicalResourceId" (JD.nullable JD.string) Nothing
        |> JDP.required "resourceType" JD.string
        |> JDP.required "lastUpdatedTimestamp" JDX.date
        |> JDP.required "resourceStatus" resourceStatusDecoder
        |> JDP.optional "resourceStatusReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "metadata" (JD.nullable JD.string) Nothing




{-| <p>Contains high-level information about the specified stack resource.</p>
-}
type alias StackResourceSummary =
    { logicalResourceId : String
    , physicalResourceId : Maybe String
    , resourceType : String
    , lastUpdatedTimestamp : Date
    , resourceStatus : ResourceStatus
    , resourceStatusReason : Maybe String
    }



stackResourceSummaryDecoder : JD.Decoder StackResourceSummary
stackResourceSummaryDecoder =
    JDP.decode StackResourceSummary
        |> JDP.required "logicalResourceId" JD.string
        |> JDP.optional "physicalResourceId" (JD.nullable JD.string) Nothing
        |> JDP.required "resourceType" JD.string
        |> JDP.required "lastUpdatedTimestamp" JDX.date
        |> JDP.required "resourceStatus" resourceStatusDecoder
        |> JDP.optional "resourceStatusReason" (JD.nullable JD.string) Nothing




{-| One of

* `StackStatus_CREATE_IN_PROGRESS`
* `StackStatus_CREATE_FAILED`
* `StackStatus_CREATE_COMPLETE`
* `StackStatus_ROLLBACK_IN_PROGRESS`
* `StackStatus_ROLLBACK_FAILED`
* `StackStatus_ROLLBACK_COMPLETE`
* `StackStatus_DELETE_IN_PROGRESS`
* `StackStatus_DELETE_FAILED`
* `StackStatus_DELETE_COMPLETE`
* `StackStatus_UPDATE_IN_PROGRESS`
* `StackStatus_UPDATE_COMPLETE_CLEANUP_IN_PROGRESS`
* `StackStatus_UPDATE_COMPLETE`
* `StackStatus_UPDATE_ROLLBACK_IN_PROGRESS`
* `StackStatus_UPDATE_ROLLBACK_FAILED`
* `StackStatus_UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS`
* `StackStatus_UPDATE_ROLLBACK_COMPLETE`
* `StackStatus_REVIEW_IN_PROGRESS`

-}
type StackStatus
    = StackStatus_CREATE_IN_PROGRESS
    | StackStatus_CREATE_FAILED
    | StackStatus_CREATE_COMPLETE
    | StackStatus_ROLLBACK_IN_PROGRESS
    | StackStatus_ROLLBACK_FAILED
    | StackStatus_ROLLBACK_COMPLETE
    | StackStatus_DELETE_IN_PROGRESS
    | StackStatus_DELETE_FAILED
    | StackStatus_DELETE_COMPLETE
    | StackStatus_UPDATE_IN_PROGRESS
    | StackStatus_UPDATE_COMPLETE_CLEANUP_IN_PROGRESS
    | StackStatus_UPDATE_COMPLETE
    | StackStatus_UPDATE_ROLLBACK_IN_PROGRESS
    | StackStatus_UPDATE_ROLLBACK_FAILED
    | StackStatus_UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS
    | StackStatus_UPDATE_ROLLBACK_COMPLETE
    | StackStatus_REVIEW_IN_PROGRESS



stackStatusDecoder : JD.Decoder StackStatus
stackStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE_IN_PROGRESS" ->
                        JD.succeed StackStatus_CREATE_IN_PROGRESS

                    "CREATE_FAILED" ->
                        JD.succeed StackStatus_CREATE_FAILED

                    "CREATE_COMPLETE" ->
                        JD.succeed StackStatus_CREATE_COMPLETE

                    "ROLLBACK_IN_PROGRESS" ->
                        JD.succeed StackStatus_ROLLBACK_IN_PROGRESS

                    "ROLLBACK_FAILED" ->
                        JD.succeed StackStatus_ROLLBACK_FAILED

                    "ROLLBACK_COMPLETE" ->
                        JD.succeed StackStatus_ROLLBACK_COMPLETE

                    "DELETE_IN_PROGRESS" ->
                        JD.succeed StackStatus_DELETE_IN_PROGRESS

                    "DELETE_FAILED" ->
                        JD.succeed StackStatus_DELETE_FAILED

                    "DELETE_COMPLETE" ->
                        JD.succeed StackStatus_DELETE_COMPLETE

                    "UPDATE_IN_PROGRESS" ->
                        JD.succeed StackStatus_UPDATE_IN_PROGRESS

                    "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS" ->
                        JD.succeed StackStatus_UPDATE_COMPLETE_CLEANUP_IN_PROGRESS

                    "UPDATE_COMPLETE" ->
                        JD.succeed StackStatus_UPDATE_COMPLETE

                    "UPDATE_ROLLBACK_IN_PROGRESS" ->
                        JD.succeed StackStatus_UPDATE_ROLLBACK_IN_PROGRESS

                    "UPDATE_ROLLBACK_FAILED" ->
                        JD.succeed StackStatus_UPDATE_ROLLBACK_FAILED

                    "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS" ->
                        JD.succeed StackStatus_UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS

                    "UPDATE_ROLLBACK_COMPLETE" ->
                        JD.succeed StackStatus_UPDATE_ROLLBACK_COMPLETE

                    "REVIEW_IN_PROGRESS" ->
                        JD.succeed StackStatus_REVIEW_IN_PROGRESS


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The StackSummary Data Type</p>
-}
type alias StackSummary =
    { stackId : Maybe String
    , stackName : String
    , templateDescription : Maybe String
    , creationTime : Date
    , lastUpdatedTime : Maybe Date
    , deletionTime : Maybe Date
    , stackStatus : StackStatus
    , stackStatusReason : Maybe String
    }



stackSummaryDecoder : JD.Decoder StackSummary
stackSummaryDecoder =
    JDP.decode StackSummary
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.required "stackName" JD.string
        |> JDP.optional "templateDescription" (JD.nullable JD.string) Nothing
        |> JDP.required "creationTime" JDX.date
        |> JDP.optional "lastUpdatedTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "deletionTime" (JD.nullable JDX.date) Nothing
        |> JDP.required "stackStatus" stackStatusDecoder
        |> JDP.optional "stackStatusReason" (JD.nullable JD.string) Nothing




{-| <p>The Tag type enables you to specify a key-value pair that can be used to store information about an AWS CloudFormation stack.</p>
-}
type alias Tag =
    { key : Maybe String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JDP.decode Tag
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>The TemplateParameter data type.</p>
-}
type alias TemplateParameter =
    { parameterKey : Maybe String
    , defaultValue : Maybe String
    , noEcho : Maybe Bool
    , description : Maybe String
    }



templateParameterDecoder : JD.Decoder TemplateParameter
templateParameterDecoder =
    JDP.decode TemplateParameter
        |> JDP.optional "parameterKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "noEcho" (JD.nullable JD.bool) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| One of

* `TemplateStage_Original`
* `TemplateStage_Processed`

-}
type TemplateStage
    = TemplateStage_Original
    | TemplateStage_Processed



templateStageDecoder : JD.Decoder TemplateStage
templateStageDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Original" ->
                        JD.succeed TemplateStage_Original

                    "Processed" ->
                        JD.succeed TemplateStage_Processed


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from updateSta
-}
type alias UpdateStackOutput =
    { stackId : Maybe String
    }



updateStackOutputDecoder : JD.Decoder UpdateStackOutput
updateStackOutputDecoder =
    JDP.decode UpdateStackOutput
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from validateTempla
-}
type alias ValidateTemplateOutput =
    { parameters : Maybe (List TemplateParameter)
    , description : Maybe String
    , capabilities : Maybe (List Capability)
    , capabilitiesReason : Maybe String
    , declaredTransforms : Maybe (List String)
    }



validateTemplateOutputDecoder : JD.Decoder ValidateTemplateOutput
validateTemplateOutputDecoder =
    JDP.decode ValidateTemplateOutput
        |> JDP.optional "parameters" (JD.nullable (JD.list templateParameterDecoder)) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "capabilities" (JD.nullable (JD.list capabilityDecoder)) Nothing
        |> JDP.optional "capabilitiesReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "declaredTransforms" (JD.nullable (JD.list JD.string)) Nothing




