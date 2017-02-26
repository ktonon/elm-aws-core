module AWS.Services.Lambda
    exposing
        ( config
        , addPermission
        , AddPermissionOptions
        , createAlias
        , CreateAliasOptions
        , createEventSourceMapping
        , CreateEventSourceMappingOptions
        , createFunction
        , CreateFunctionOptions
        , deleteAlias
        , deleteEventSourceMapping
        , deleteFunction
        , DeleteFunctionOptions
        , getAccountSettings
        , getAlias
        , getEventSourceMapping
        , getFunction
        , GetFunctionOptions
        , getFunctionConfiguration
        , GetFunctionConfigurationOptions
        , getPolicy
        , GetPolicyOptions
        , invoke
        , InvokeOptions
        , invokeAsync
        , listAliases
        , ListAliasesOptions
        , listEventSourceMappings
        , ListEventSourceMappingsOptions
        , listFunctions
        , ListFunctionsOptions
        , listVersionsByFunction
        , ListVersionsByFunctionOptions
        , publishVersion
        , PublishVersionOptions
        , removePermission
        , RemovePermissionOptions
        , updateAlias
        , UpdateAliasOptions
        , updateEventSourceMapping
        , UpdateEventSourceMappingOptions
        , updateFunctionCode
        , UpdateFunctionCodeOptions
        , updateFunctionConfiguration
        , UpdateFunctionConfigurationOptions
        , AccountLimit
        , AccountUsage
        , AddPermissionResponse
        , AliasConfiguration
        , CodeStorageExceededException
        , DeadLetterConfig
        , EC2AccessDeniedException
        , EC2ThrottledException
        , EC2UnexpectedException
        , ENILimitReachedException
        , Environment
        , EnvironmentError
        , EnvironmentResponse
        , EventSourceMappingConfiguration
        , EventSourcePosition(..)
        , FunctionCode
        , FunctionCodeLocation
        , FunctionConfiguration
        , GetAccountSettingsResponse
        , GetFunctionResponse
        , GetPolicyResponse
        , InvalidParameterValueException
        , InvalidRequestContentException
        , InvalidSecurityGroupIDException
        , InvalidSubnetIDException
        , InvalidZipFileException
        , InvocationResponse
        , InvocationType(..)
        , InvokeAsyncResponse
        , KMSAccessDeniedException
        , KMSDisabledException
        , KMSInvalidStateException
        , KMSNotFoundException
        , ListAliasesResponse
        , ListEventSourceMappingsResponse
        , ListFunctionsResponse
        , ListVersionsByFunctionResponse
        , LogType(..)
        , PolicyLengthExceededException
        , RequestTooLargeException
        , ResourceConflictException
        , ResourceNotFoundException
        , Runtime(..)
        , ServiceException
        , SubnetIPAddressLimitReachedException
        , ThrottleReason(..)
        , TooManyRequestsException
        , UnsupportedMediaTypeException
        , VpcConfig
        , VpcConfigResponse
        )

{-| <fullname>AWS Lambda</fullname> <p> <b>Overview</b> </p> <p>This is the <i>AWS Lambda API Reference</i>. The AWS Lambda Developer Guide provides additional information. For the service overview, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/welcome.html">What is AWS Lambda</a>, and for information about how the service works, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html">AWS Lambda: How it Works</a> in the <i>AWS Lambda Developer Guide</i>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addPermission](#addPermission)
* [AddPermissionOptions](#AddPermissionOptions)
* [createAlias](#createAlias)
* [CreateAliasOptions](#CreateAliasOptions)
* [createEventSourceMapping](#createEventSourceMapping)
* [CreateEventSourceMappingOptions](#CreateEventSourceMappingOptions)
* [createFunction](#createFunction)
* [CreateFunctionOptions](#CreateFunctionOptions)
* [deleteAlias](#deleteAlias)
* [deleteEventSourceMapping](#deleteEventSourceMapping)
* [deleteFunction](#deleteFunction)
* [DeleteFunctionOptions](#DeleteFunctionOptions)
* [getAccountSettings](#getAccountSettings)
* [getAlias](#getAlias)
* [getEventSourceMapping](#getEventSourceMapping)
* [getFunction](#getFunction)
* [GetFunctionOptions](#GetFunctionOptions)
* [getFunctionConfiguration](#getFunctionConfiguration)
* [GetFunctionConfigurationOptions](#GetFunctionConfigurationOptions)
* [getPolicy](#getPolicy)
* [GetPolicyOptions](#GetPolicyOptions)
* [invoke](#invoke)
* [InvokeOptions](#InvokeOptions)
* [invokeAsync](#invokeAsync)
* [listAliases](#listAliases)
* [ListAliasesOptions](#ListAliasesOptions)
* [listEventSourceMappings](#listEventSourceMappings)
* [ListEventSourceMappingsOptions](#ListEventSourceMappingsOptions)
* [listFunctions](#listFunctions)
* [ListFunctionsOptions](#ListFunctionsOptions)
* [listVersionsByFunction](#listVersionsByFunction)
* [ListVersionsByFunctionOptions](#ListVersionsByFunctionOptions)
* [publishVersion](#publishVersion)
* [PublishVersionOptions](#PublishVersionOptions)
* [removePermission](#removePermission)
* [RemovePermissionOptions](#RemovePermissionOptions)
* [updateAlias](#updateAlias)
* [UpdateAliasOptions](#UpdateAliasOptions)
* [updateEventSourceMapping](#updateEventSourceMapping)
* [UpdateEventSourceMappingOptions](#UpdateEventSourceMappingOptions)
* [updateFunctionCode](#updateFunctionCode)
* [UpdateFunctionCodeOptions](#UpdateFunctionCodeOptions)
* [updateFunctionConfiguration](#updateFunctionConfiguration)
* [UpdateFunctionConfigurationOptions](#UpdateFunctionConfigurationOptions)


@docs addPermission,AddPermissionOptions,createAlias,CreateAliasOptions,createEventSourceMapping,CreateEventSourceMappingOptions,createFunction,CreateFunctionOptions,deleteAlias,deleteEventSourceMapping,deleteFunction,DeleteFunctionOptions,getAccountSettings,getAlias,getEventSourceMapping,getFunction,GetFunctionOptions,getFunctionConfiguration,GetFunctionConfigurationOptions,getPolicy,GetPolicyOptions,invoke,InvokeOptions,invokeAsync,listAliases,ListAliasesOptions,listEventSourceMappings,ListEventSourceMappingsOptions,listFunctions,ListFunctionsOptions,listVersionsByFunction,ListVersionsByFunctionOptions,publishVersion,PublishVersionOptions,removePermission,RemovePermissionOptions,updateAlias,UpdateAliasOptions,updateEventSourceMapping,UpdateEventSourceMappingOptions,updateFunctionCode,UpdateFunctionCodeOptions,updateFunctionConfiguration,UpdateFunctionConfigurationOptions

## Responses

* [AddPermissionResponse](#AddPermissionResponse)
* [AliasConfiguration](#AliasConfiguration)
* [EventSourceMappingConfiguration](#EventSourceMappingConfiguration)
* [FunctionConfiguration](#FunctionConfiguration)
* [GetAccountSettingsResponse](#GetAccountSettingsResponse)
* [GetFunctionResponse](#GetFunctionResponse)
* [GetPolicyResponse](#GetPolicyResponse)
* [InvocationResponse](#InvocationResponse)
* [InvokeAsyncResponse](#InvokeAsyncResponse)
* [ListAliasesResponse](#ListAliasesResponse)
* [ListEventSourceMappingsResponse](#ListEventSourceMappingsResponse)
* [ListFunctionsResponse](#ListFunctionsResponse)
* [ListVersionsByFunctionResponse](#ListVersionsByFunctionResponse)


@docs AddPermissionResponse,AliasConfiguration,EventSourceMappingConfiguration,FunctionConfiguration,GetAccountSettingsResponse,GetFunctionResponse,GetPolicyResponse,InvocationResponse,InvokeAsyncResponse,ListAliasesResponse,ListEventSourceMappingsResponse,ListFunctionsResponse,ListVersionsByFunctionResponse

## Records

* [AccountLimit](#AccountLimit)
* [AccountUsage](#AccountUsage)
* [DeadLetterConfig](#DeadLetterConfig)
* [Environment](#Environment)
* [EnvironmentError](#EnvironmentError)
* [EnvironmentResponse](#EnvironmentResponse)
* [FunctionCode](#FunctionCode)
* [FunctionCodeLocation](#FunctionCodeLocation)
* [VpcConfig](#VpcConfig)
* [VpcConfigResponse](#VpcConfigResponse)


@docs AccountLimit,AccountUsage,DeadLetterConfig,Environment,EnvironmentError,EnvironmentResponse,FunctionCode,FunctionCodeLocation,VpcConfig,VpcConfigResponse

## Unions

* [EventSourcePosition](#EventSourcePosition)
* [InvocationType](#InvocationType)
* [LogType](#LogType)
* [Runtime](#Runtime)
* [ThrottleReason](#ThrottleReason)


@docs EventSourcePosition,InvocationType,LogType,Runtime,ThrottleReason

## Exceptions

* [CodeStorageExceededException](#CodeStorageExceededException)
* [EC2AccessDeniedException](#EC2AccessDeniedException)
* [EC2ThrottledException](#EC2ThrottledException)
* [EC2UnexpectedException](#EC2UnexpectedException)
* [ENILimitReachedException](#ENILimitReachedException)
* [InvalidParameterValueException](#InvalidParameterValueException)
* [InvalidRequestContentException](#InvalidRequestContentException)
* [InvalidSecurityGroupIDException](#InvalidSecurityGroupIDException)
* [InvalidSubnetIDException](#InvalidSubnetIDException)
* [InvalidZipFileException](#InvalidZipFileException)
* [KMSAccessDeniedException](#KMSAccessDeniedException)
* [KMSDisabledException](#KMSDisabledException)
* [KMSInvalidStateException](#KMSInvalidStateException)
* [KMSNotFoundException](#KMSNotFoundException)
* [PolicyLengthExceededException](#PolicyLengthExceededException)
* [RequestTooLargeException](#RequestTooLargeException)
* [ResourceConflictException](#ResourceConflictException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [ServiceException](#ServiceException)
* [SubnetIPAddressLimitReachedException](#SubnetIPAddressLimitReachedException)
* [TooManyRequestsException](#TooManyRequestsException)
* [UnsupportedMediaTypeException](#UnsupportedMediaTypeException)


@docs CodeStorageExceededException,EC2AccessDeniedException,EC2ThrottledException,EC2UnexpectedException,ENILimitReachedException,InvalidParameterValueException,InvalidRequestContentException,InvalidSecurityGroupIDException,InvalidSubnetIDException,InvalidZipFileException,KMSAccessDeniedException,KMSDisabledException,KMSInvalidStateException,KMSNotFoundException,PolicyLengthExceededException,RequestTooLargeException,ResourceConflictException,ResourceNotFoundException,ServiceException,SubnetIPAddressLimitReachedException,TooManyRequestsException,UnsupportedMediaTypeException

-}

import AWS
import AWS.Config
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Date exposing (Date)
import Json.Decode.Extra as JDX
import Dict exposing (Dict)


{-| Configuration for this service
-}
config : AWS.ServiceConfig
config =
    AWS.Config.Service
        "lambda"
        "2015-03-31"
        "undefined"
        "AWSLAMBDA_20150331."
        "lambda.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Adds a permission to the resource policy associated with the specified AWS Lambda function. You use resource policies to grant permissions to event sources that use <i>push</i> model. In a <i>push</i> model, event sources (such as Amazon S3 and custom applications) invoke your Lambda function. Each permission you add to the resource policy allows an event source, permission to invoke the Lambda function. </p> <p>For information about the push model, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html">AWS Lambda: How it Works</a>. </p> <p>If you are using versioning, the permissions you add are specific to the Lambda function version or alias you specify in the <code>AddPermission</code> request via the <code>Qualifier</code> parameter. For more information about versioning, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a>. </p> <p>This operation requires permission for the <code>lambda:AddPermission</code> action.</p>

__Required Parameters__

* `functionName` __:__ `String`
* `statementId` __:__ `String`
* `action` __:__ `String`
* `principal` __:__ `String`


-}
addPermission :
    String
    -> String
    -> String
    -> String
    -> (AddPermissionOptions -> AddPermissionOptions)
    -> AWS.Request AddPermissionResponse
addPermission functionName statementId action principal setOptions =
  let
    options = setOptions (AddPermissionOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AddPermission"
        "POST"
        ("/2015-03-31/functions/" ++ functionName ++ "/policy")
        (AWS.Http.JsonBody
            JE.null
        )
        addPermissionResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a addPermission request
-}
type alias AddPermissionOptions =
    { sourceArn : Maybe String
    , sourceAccount : Maybe String
    , eventSourceToken : Maybe String
    , qualifier : Maybe String
    }



{-| <p>Creates an alias that points to the specified Lambda function version. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html">Introduction to AWS Lambda Aliases</a>.</p> <p>Alias names are unique for a given function. This requires permission for the lambda:CreateAlias action.</p>

__Required Parameters__

* `functionName` __:__ `String`
* `name` __:__ `String`
* `functionVersion` __:__ `String`


-}
createAlias :
    String
    -> String
    -> String
    -> (CreateAliasOptions -> CreateAliasOptions)
    -> AWS.Request AliasConfiguration
createAlias functionName name functionVersion setOptions =
  let
    options = setOptions (CreateAliasOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateAlias"
        "POST"
        ("/2015-03-31/functions/" ++ functionName ++ "/aliases")
        (AWS.Http.JsonBody
            JE.null
        )
        aliasConfigurationDecoder
        |> AWS.UnsignedRequest


{-| Options for a createAlias request
-}
type alias CreateAliasOptions =
    { description : Maybe String
    }



{-| <p>Identifies a stream as an event source for a Lambda function. It can be either an Amazon Kinesis stream or an Amazon DynamoDB stream. AWS Lambda invokes the specified function when records are posted to the stream.</p> <p>This association between a stream source and a Lambda function is called the event source mapping.</p> <important><p>This event source mapping is relevant only in the AWS Lambda pull model, where AWS Lambda invokes the function. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html">AWS Lambda: How it Works</a> in the <i>AWS Lambda Developer Guide</i>.</p> </important> <p>You provide mapping information (for example, which stream to read from and which Lambda function to invoke) in the request body.</p> <p>Each event source, such as an Amazon Kinesis or a DynamoDB stream, can be associated with multiple AWS Lambda function. A given Lambda function can be associated with multiple AWS event sources.</p> <p>If you are using versioning, you can specify a specific function version or an alias via the function name parameter. For more information about versioning, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a>. </p> <p>This operation requires permission for the <code>lambda:CreateEventSourceMapping</code> action.</p>

__Required Parameters__

* `eventSourceArn` __:__ `String`
* `functionName` __:__ `String`
* `startingPosition` __:__ `EventSourcePosition`


-}
createEventSourceMapping :
    String
    -> String
    -> EventSourcePosition
    -> (CreateEventSourceMappingOptions -> CreateEventSourceMappingOptions)
    -> AWS.Request EventSourceMappingConfiguration
createEventSourceMapping eventSourceArn functionName startingPosition setOptions =
  let
    options = setOptions (CreateEventSourceMappingOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateEventSourceMapping"
        "POST"
        "/2015-03-31/event-source-mappings/"
        (AWS.Http.JsonBody
            JE.null
        )
        eventSourceMappingConfigurationDecoder
        |> AWS.UnsignedRequest


{-| Options for a createEventSourceMapping request
-}
type alias CreateEventSourceMappingOptions =
    { enabled : Maybe Bool
    , batchSize : Maybe Int
    , startingPositionTimestamp : Maybe Date
    }



{-| <p>Creates a new Lambda function. The function metadata is created from the request parameters, and the code for the function is provided by a .zip file in the request body. If the function name already exists, the operation will fail. Note that the function name is case-sensitive.</p> <p> If you are using versioning, you can also publish a version of the Lambda function you are creating using the <code>Publish</code> parameter. For more information about versioning, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a>. </p> <p>This operation requires permission for the <code>lambda:CreateFunction</code> action.</p>

__Required Parameters__

* `functionName` __:__ `String`
* `runtime` __:__ `Runtime`
* `role` __:__ `String`
* `handler` __:__ `String`
* `code` __:__ `FunctionCode`


-}
createFunction :
    String
    -> Runtime
    -> String
    -> String
    -> FunctionCode
    -> (CreateFunctionOptions -> CreateFunctionOptions)
    -> AWS.Request FunctionConfiguration
createFunction functionName runtime role handler code setOptions =
  let
    options = setOptions (CreateFunctionOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateFunction"
        "POST"
        "/2015-03-31/functions"
        (AWS.Http.JsonBody
            JE.null
        )
        functionConfigurationDecoder
        |> AWS.UnsignedRequest


{-| Options for a createFunction request
-}
type alias CreateFunctionOptions =
    { description : Maybe String
    , timeout : Maybe Int
    , memorySize : Maybe Int
    , publish : Maybe Bool
    , vpcConfig : Maybe VpcConfig
    , deadLetterConfig : Maybe DeadLetterConfig
    , environment : Maybe Environment
    , kMSKeyArn : Maybe String
    }



{-| <p>Deletes the specified Lambda function alias. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html">Introduction to AWS Lambda Aliases</a>.</p> <p>This requires permission for the lambda:DeleteAlias action.</p>

__Required Parameters__

* `functionName` __:__ `String`
* `name` __:__ `String`


-}
deleteAlias :
    String
    -> String
    -> AWS.Request ()
deleteAlias functionName name =
    AWS.Http.unsignedRequest
        "DeleteAlias"
        "DELETE"
        ("/2015-03-31/functions/" ++ functionName ++ "/aliases/" ++ name ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Removes an event source mapping. This means AWS Lambda will no longer invoke the function for events in the associated source.</p> <p>This operation requires permission for the <code>lambda:DeleteEventSourceMapping</code> action.</p>

__Required Parameters__

* `uUID` __:__ `String`


-}
deleteEventSourceMapping :
    String
    -> AWS.Request EventSourceMappingConfiguration
deleteEventSourceMapping uUID =
    AWS.Http.unsignedRequest
        "DeleteEventSourceMapping"
        "DELETE"
        ("/2015-03-31/event-source-mappings/" ++ uUID ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        eventSourceMappingConfigurationDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified Lambda function code and configuration.</p> <p>If you are using the versioning feature and you don't specify a function version in your <code>DeleteFunction</code> request, AWS Lambda will delete the function, including all its versions, and any aliases pointing to the function versions. To delete a specific function version, you must provide the function version via the <code>Qualifier</code> parameter. For information about function versioning, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a>. </p> <p>When you delete a function the associated resource policy is also deleted. You will need to delete the event source mappings explicitly.</p> <p>This operation requires permission for the <code>lambda:DeleteFunction</code> action.</p>

__Required Parameters__

* `functionName` __:__ `String`


-}
deleteFunction :
    String
    -> (DeleteFunctionOptions -> DeleteFunctionOptions)
    -> AWS.Request ()
deleteFunction functionName setOptions =
  let
    options = setOptions (DeleteFunctionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteFunction"
        "DELETE"
        ("/2015-03-31/functions/" ++ functionName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteFunction request
-}
type alias DeleteFunctionOptions =
    { qualifier : Maybe String
    }



{-| <p>Returns a customer's account settings.</p> <p>You can use this operation to retrieve Lambda limits information, such as code size and concurrency limits. For more information about limits, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/limits.html">AWS Lambda Limits</a>. You can also retrieve resource usage statistics, such as code storage usage and function count.</p>

__Required Parameters__



-}
getAccountSettings :
    AWS.Request GetAccountSettingsResponse
getAccountSettings =
    AWS.Http.unsignedRequest
        "GetAccountSettings"
        "GET"
        "/2016-08-19/account-settings/"
        (AWS.Http.QueryParams
            [
            ]
        )
        getAccountSettingsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the specified alias information such as the alias ARN, description, and function version it is pointing to. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html">Introduction to AWS Lambda Aliases</a>.</p> <p>This requires permission for the <code>lambda:GetAlias</code> action.</p>

__Required Parameters__

* `functionName` __:__ `String`
* `name` __:__ `String`


-}
getAlias :
    String
    -> String
    -> AWS.Request AliasConfiguration
getAlias functionName name =
    AWS.Http.unsignedRequest
        "GetAlias"
        "GET"
        ("/2015-03-31/functions/" ++ functionName ++ "/aliases/" ++ name ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        aliasConfigurationDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns configuration information for the specified event source mapping (see <a>CreateEventSourceMapping</a>).</p> <p>This operation requires permission for the <code>lambda:GetEventSourceMapping</code> action.</p>

__Required Parameters__

* `uUID` __:__ `String`


-}
getEventSourceMapping :
    String
    -> AWS.Request EventSourceMappingConfiguration
getEventSourceMapping uUID =
    AWS.Http.unsignedRequest
        "GetEventSourceMapping"
        "GET"
        ("/2015-03-31/event-source-mappings/" ++ uUID ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        eventSourceMappingConfigurationDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the configuration information of the Lambda function and a presigned URL link to the .zip file you uploaded with <a>CreateFunction</a> so you can download the .zip file. Note that the URL is valid for up to 10 minutes. The configuration information is the same information you provided as parameters when uploading the function.</p> <p>Using the optional <code>Qualifier</code> parameter, you can specify a specific function version for which you want this information. If you don't specify this parameter, the API uses unqualified function ARN which return information about the <code>$LATEST</code> version of the Lambda function. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a>.</p> <p>This operation requires permission for the <code>lambda:GetFunction</code> action.</p>

__Required Parameters__

* `functionName` __:__ `String`


-}
getFunction :
    String
    -> (GetFunctionOptions -> GetFunctionOptions)
    -> AWS.Request GetFunctionResponse
getFunction functionName setOptions =
  let
    options = setOptions (GetFunctionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetFunction"
        "GET"
        ("/2015-03-31/functions/" ++ functionName ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        getFunctionResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getFunction request
-}
type alias GetFunctionOptions =
    { qualifier : Maybe String
    }



{-| <p>Returns the configuration information of the Lambda function. This the same information you provided as parameters when uploading the function by using <a>CreateFunction</a>.</p> <p>If you are using the versioning feature, you can retrieve this information for a specific function version by using the optional <code>Qualifier</code> parameter and specifying the function version or alias that points to it. If you don't provide it, the API returns information about the $LATEST version of the function. For more information about versioning, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a>.</p> <p>This operation requires permission for the <code>lambda:GetFunctionConfiguration</code> operation.</p>

__Required Parameters__

* `functionName` __:__ `String`


-}
getFunctionConfiguration :
    String
    -> (GetFunctionConfigurationOptions -> GetFunctionConfigurationOptions)
    -> AWS.Request FunctionConfiguration
getFunctionConfiguration functionName setOptions =
  let
    options = setOptions (GetFunctionConfigurationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetFunctionConfiguration"
        "GET"
        ("/2015-03-31/functions/" ++ functionName ++ "/configuration")
        (AWS.Http.QueryParams
            [
            ]
        )
        functionConfigurationDecoder
        |> AWS.UnsignedRequest


{-| Options for a getFunctionConfiguration request
-}
type alias GetFunctionConfigurationOptions =
    { qualifier : Maybe String
    }



{-| <p>Returns the resource policy associated with the specified Lambda function.</p> <p> If you are using the versioning feature, you can get the resource policy associated with the specific Lambda function version or alias by specifying the version or alias name using the <code>Qualifier</code> parameter. For more information about versioning, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a>. </p> <p>For information about adding permissions, see <a>AddPermission</a>.</p> <p>You need permission for the <code>lambda:GetPolicy action.</code> </p>

__Required Parameters__

* `functionName` __:__ `String`


-}
getPolicy :
    String
    -> (GetPolicyOptions -> GetPolicyOptions)
    -> AWS.Request GetPolicyResponse
getPolicy functionName setOptions =
  let
    options = setOptions (GetPolicyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetPolicy"
        "GET"
        ("/2015-03-31/functions/" ++ functionName ++ "/policy")
        (AWS.Http.QueryParams
            [
            ]
        )
        getPolicyResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getPolicy request
-}
type alias GetPolicyOptions =
    { qualifier : Maybe String
    }



{-| <p>Invokes a specific Lambda function. For an example, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/with-dynamodb-create-function.html#with-dbb-invoke-manually">Create the Lambda Function and Test It Manually</a>. </p> <p>If you are using the versioning feature, you can invoke the specific function version by providing function version or alias name that is pointing to the function version using the <code>Qualifier</code> parameter in the request. If you don't provide the <code>Qualifier</code> parameter, the <code>$LATEST</code> version of the Lambda function is invoked. Invocations occur at least once in response to an event and functions must be idempotent to handle this. For information about the versioning feature, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a>. </p> <p>This operation requires permission for the <code>lambda:InvokeFunction</code> action.</p>

__Required Parameters__

* `functionName` __:__ `String`


-}
invoke :
    String
    -> (InvokeOptions -> InvokeOptions)
    -> AWS.Request InvocationResponse
invoke functionName setOptions =
  let
    options = setOptions (InvokeOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "Invoke"
        "POST"
        ("/2015-03-31/functions/" ++ functionName ++ "/invocations")
        (AWS.Http.JsonBody
            JE.null
        )
        invocationResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a invoke request
-}
type alias InvokeOptions =
    { invocationType : Maybe InvocationType
    , logType : Maybe LogType
    , clientContext : Maybe String
    , payload : Maybe String
    , qualifier : Maybe String
    }



{-| <important><p>This API is deprecated. We recommend you use <code>Invoke</code> API (see <a>Invoke</a>).</p> </important> <p>Submits an invocation request to AWS Lambda. Upon receiving the request, Lambda executes the specified function asynchronously. To see the logs generated by the Lambda function execution, see the CloudWatch Logs console.</p> <p>This operation requires permission for the <code>lambda:InvokeFunction</code> action.</p>

__Required Parameters__

* `functionName` __:__ `String`
* `invokeArgs` __:__ `String`


-}
invokeAsync :
    String
    -> String
    -> AWS.Request InvokeAsyncResponse
invokeAsync functionName invokeArgs =
    AWS.Http.unsignedRequest
        "InvokeAsync"
        "POST"
        ("/2014-11-13/functions/" ++ functionName ++ "/invoke-async/")
        (AWS.Http.JsonBody
            JE.null
        )
        invokeAsyncResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns list of aliases created for a Lambda function. For each alias, the response includes information such as the alias ARN, description, alias name, and the function version to which it points. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html">Introduction to AWS Lambda Aliases</a>.</p> <p>This requires permission for the lambda:ListAliases action.</p>

__Required Parameters__

* `functionName` __:__ `String`


-}
listAliases :
    String
    -> (ListAliasesOptions -> ListAliasesOptions)
    -> AWS.Request ListAliasesResponse
listAliases functionName setOptions =
  let
    options = setOptions (ListAliasesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAliases"
        "GET"
        ("/2015-03-31/functions/" ++ functionName ++ "/aliases")
        (AWS.Http.QueryParams
            [
            ]
        )
        listAliasesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listAliases request
-}
type alias ListAliasesOptions =
    { functionVersion : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Returns a list of event source mappings you created using the <code>CreateEventSourceMapping</code> (see <a>CreateEventSourceMapping</a>). </p> <p>For each mapping, the API returns configuration information. You can optionally specify filters to retrieve specific event source mappings.</p> <p>If you are using the versioning feature, you can get list of event source mappings for a specific Lambda function version or an alias as described in the <code>FunctionName</code> parameter. For information about the versioning feature, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a>. </p> <p>This operation requires permission for the <code>lambda:ListEventSourceMappings</code> action.</p>

__Required Parameters__



-}
listEventSourceMappings :
    (ListEventSourceMappingsOptions -> ListEventSourceMappingsOptions)
    -> AWS.Request ListEventSourceMappingsResponse
listEventSourceMappings setOptions =
  let
    options = setOptions (ListEventSourceMappingsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListEventSourceMappings"
        "GET"
        "/2015-03-31/event-source-mappings/"
        (AWS.Http.QueryParams
            [
            ]
        )
        listEventSourceMappingsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listEventSourceMappings request
-}
type alias ListEventSourceMappingsOptions =
    { eventSourceArn : Maybe String
    , functionName : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Returns a list of your Lambda functions. For each function, the response includes the function configuration information. You must use <a>GetFunction</a> to retrieve the code for your function.</p> <p>This operation requires permission for the <code>lambda:ListFunctions</code> action.</p> <p>If you are using versioning feature, the response returns list of $LATEST versions of your functions. For information about the versioning feature, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a>. </p>

__Required Parameters__



-}
listFunctions :
    (ListFunctionsOptions -> ListFunctionsOptions)
    -> AWS.Request ListFunctionsResponse
listFunctions setOptions =
  let
    options = setOptions (ListFunctionsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListFunctions"
        "GET"
        "/2015-03-31/functions/"
        (AWS.Http.QueryParams
            [
            ]
        )
        listFunctionsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listFunctions request
-}
type alias ListFunctionsOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>List all versions of a function. For information about the versioning feature, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a>. </p>

__Required Parameters__

* `functionName` __:__ `String`


-}
listVersionsByFunction :
    String
    -> (ListVersionsByFunctionOptions -> ListVersionsByFunctionOptions)
    -> AWS.Request ListVersionsByFunctionResponse
listVersionsByFunction functionName setOptions =
  let
    options = setOptions (ListVersionsByFunctionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListVersionsByFunction"
        "GET"
        ("/2015-03-31/functions/" ++ functionName ++ "/versions")
        (AWS.Http.QueryParams
            [
            ]
        )
        listVersionsByFunctionResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listVersionsByFunction request
-}
type alias ListVersionsByFunctionOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Publishes a version of your function from the current snapshot of $LATEST. That is, AWS Lambda takes a snapshot of the function code and configuration information from $LATEST and publishes a new version. The code and configuration cannot be modified after publication. For information about the versioning feature, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a>. </p>

__Required Parameters__

* `functionName` __:__ `String`


-}
publishVersion :
    String
    -> (PublishVersionOptions -> PublishVersionOptions)
    -> AWS.Request FunctionConfiguration
publishVersion functionName setOptions =
  let
    options = setOptions (PublishVersionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PublishVersion"
        "POST"
        ("/2015-03-31/functions/" ++ functionName ++ "/versions")
        (AWS.Http.JsonBody
            JE.null
        )
        functionConfigurationDecoder
        |> AWS.UnsignedRequest


{-| Options for a publishVersion request
-}
type alias PublishVersionOptions =
    { codeSha256 : Maybe String
    , description : Maybe String
    }



{-| <p>You can remove individual permissions from an resource policy associated with a Lambda function by providing a statement ID that you provided when you added the permission.</p> <p>If you are using versioning, the permissions you remove are specific to the Lambda function version or alias you specify in the <code>AddPermission</code> request via the <code>Qualifier</code> parameter. For more information about versioning, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a>. </p> <p>Note that removal of a permission will cause an active event source to lose permission to the function.</p> <p>You need permission for the <code>lambda:RemovePermission</code> action.</p>

__Required Parameters__

* `functionName` __:__ `String`
* `statementId` __:__ `String`


-}
removePermission :
    String
    -> String
    -> (RemovePermissionOptions -> RemovePermissionOptions)
    -> AWS.Request ()
removePermission functionName statementId setOptions =
  let
    options = setOptions (RemovePermissionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RemovePermission"
        "DELETE"
        ("/2015-03-31/functions/" ++ functionName ++ "/policy/" ++ statementId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a removePermission request
-}
type alias RemovePermissionOptions =
    { qualifier : Maybe String
    }



{-| <p>Using this API you can update the function version to which the alias points and the alias description. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html">Introduction to AWS Lambda Aliases</a>.</p> <p>This requires permission for the lambda:UpdateAlias action.</p>

__Required Parameters__

* `functionName` __:__ `String`
* `name` __:__ `String`


-}
updateAlias :
    String
    -> String
    -> (UpdateAliasOptions -> UpdateAliasOptions)
    -> AWS.Request AliasConfiguration
updateAlias functionName name setOptions =
  let
    options = setOptions (UpdateAliasOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateAlias"
        "PUT"
        ("/2015-03-31/functions/" ++ functionName ++ "/aliases/" ++ name ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        aliasConfigurationDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateAlias request
-}
type alias UpdateAliasOptions =
    { functionVersion : Maybe String
    , description : Maybe String
    }



{-| <p>You can update an event source mapping. This is useful if you want to change the parameters of the existing mapping without losing your position in the stream. You can change which function will receive the stream records, but to change the stream itself, you must create a new mapping.</p> <p>If you are using the versioning feature, you can update the event source mapping to map to a specific Lambda function version or alias as described in the <code>FunctionName</code> parameter. For information about the versioning feature, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a>. </p> <p>If you disable the event source mapping, AWS Lambda stops polling. If you enable again, it will resume polling from the time it had stopped polling, so you don't lose processing of any records. However, if you delete event source mapping and create it again, it will reset.</p> <p>This operation requires permission for the <code>lambda:UpdateEventSourceMapping</code> action.</p>

__Required Parameters__

* `uUID` __:__ `String`


-}
updateEventSourceMapping :
    String
    -> (UpdateEventSourceMappingOptions -> UpdateEventSourceMappingOptions)
    -> AWS.Request EventSourceMappingConfiguration
updateEventSourceMapping uUID setOptions =
  let
    options = setOptions (UpdateEventSourceMappingOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateEventSourceMapping"
        "PUT"
        ("/2015-03-31/event-source-mappings/" ++ uUID ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        eventSourceMappingConfigurationDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateEventSourceMapping request
-}
type alias UpdateEventSourceMappingOptions =
    { functionName : Maybe String
    , enabled : Maybe Bool
    , batchSize : Maybe Int
    }



{-| <p>Updates the code for the specified Lambda function. This operation must only be used on an existing Lambda function and cannot be used to update the function configuration.</p> <p>If you are using the versioning feature, note this API will always update the $LATEST version of your Lambda function. For information about the versioning feature, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a>. </p> <p>This operation requires permission for the <code>lambda:UpdateFunctionCode</code> action.</p>

__Required Parameters__

* `functionName` __:__ `String`


-}
updateFunctionCode :
    String
    -> (UpdateFunctionCodeOptions -> UpdateFunctionCodeOptions)
    -> AWS.Request FunctionConfiguration
updateFunctionCode functionName setOptions =
  let
    options = setOptions (UpdateFunctionCodeOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateFunctionCode"
        "PUT"
        ("/2015-03-31/functions/" ++ functionName ++ "/code")
        (AWS.Http.JsonBody
            JE.null
        )
        functionConfigurationDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateFunctionCode request
-}
type alias UpdateFunctionCodeOptions =
    { zipFile : Maybe String
    , s3Bucket : Maybe String
    , s3Key : Maybe String
    , s3ObjectVersion : Maybe String
    , publish : Maybe Bool
    }



{-| <p>Updates the configuration parameters for the specified Lambda function by using the values provided in the request. You provide only the parameters you want to change. This operation must only be used on an existing Lambda function and cannot be used to update the function's code.</p> <p>If you are using the versioning feature, note this API will always update the $LATEST version of your Lambda function. For information about the versioning feature, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">AWS Lambda Function Versioning and Aliases</a>. </p> <p>This operation requires permission for the <code>lambda:UpdateFunctionConfiguration</code> action.</p>

__Required Parameters__

* `functionName` __:__ `String`


-}
updateFunctionConfiguration :
    String
    -> (UpdateFunctionConfigurationOptions -> UpdateFunctionConfigurationOptions)
    -> AWS.Request FunctionConfiguration
updateFunctionConfiguration functionName setOptions =
  let
    options = setOptions (UpdateFunctionConfigurationOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateFunctionConfiguration"
        "PUT"
        ("/2015-03-31/functions/" ++ functionName ++ "/configuration")
        (AWS.Http.JsonBody
            JE.null
        )
        functionConfigurationDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateFunctionConfiguration request
-}
type alias UpdateFunctionConfigurationOptions =
    { role : Maybe String
    , handler : Maybe String
    , description : Maybe String
    , timeout : Maybe Int
    , memorySize : Maybe Int
    , vpcConfig : Maybe VpcConfig
    , environment : Maybe Environment
    , runtime : Maybe Runtime
    , deadLetterConfig : Maybe DeadLetterConfig
    , kMSKeyArn : Maybe String
    }




{-| <p>Provides limits of code size and concurrency associated with the current account and region.</p>
-}
type alias AccountLimit =
    { totalCodeSize : Maybe Int
    , codeSizeUnzipped : Maybe Int
    , codeSizeZipped : Maybe Int
    , concurrentExecutions : Maybe Int
    }



accountLimitDecoder : JD.Decoder AccountLimit
accountLimitDecoder =
    JDP.decode AccountLimit
        |> JDP.optional "totalCodeSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "codeSizeUnzipped" (JD.nullable JD.int) Nothing
        |> JDP.optional "codeSizeZipped" (JD.nullable JD.int) Nothing
        |> JDP.optional "concurrentExecutions" (JD.nullable JD.int) Nothing




{-| <p>Provides code size usage and function count associated with the current account and region.</p>
-}
type alias AccountUsage =
    { totalCodeSize : Maybe Int
    , functionCount : Maybe Int
    }



accountUsageDecoder : JD.Decoder AccountUsage
accountUsageDecoder =
    JDP.decode AccountUsage
        |> JDP.optional "totalCodeSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "functionCount" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from addPermission
-}
type alias AddPermissionResponse =
    { statement : Maybe String
    }



addPermissionResponseDecoder : JD.Decoder AddPermissionResponse
addPermissionResponseDecoder =
    JDP.decode AddPermissionResponse
        |> JDP.optional "statement" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from aliasConfi
-}
type alias AliasConfiguration =
    { aliasArn : Maybe String
    , name : Maybe String
    , functionVersion : Maybe String
    , description : Maybe String
    }



aliasConfigurationDecoder : JD.Decoder AliasConfiguration
aliasConfigurationDecoder =
    JDP.decode AliasConfiguration
        |> JDP.optional "aliasArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "functionVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>You have exceeded your maximum total code size per account. <a href="http://docs.aws.amazon.com/lambda/latest/dg/limits.html">Limits</a> </p>
-}
type alias CodeStorageExceededException =
    { type_ : Maybe String
    , message : Maybe String
    }



codeStorageExceededExceptionDecoder : JD.Decoder CodeStorageExceededException
codeStorageExceededExceptionDecoder =
    JDP.decode CodeStorageExceededException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The parent object that contains the target Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.</p>
-}
type alias DeadLetterConfig =
    { targetArn : Maybe String
    }



deadLetterConfigDecoder : JD.Decoder DeadLetterConfig
deadLetterConfigDecoder =
    JDP.decode DeadLetterConfig
        |> JDP.optional "targetArn" (JD.nullable JD.string) Nothing




{-| <p/>
-}
type alias EC2AccessDeniedException =
    { type_ : Maybe String
    , message : Maybe String
    }



eC2AccessDeniedExceptionDecoder : JD.Decoder EC2AccessDeniedException
eC2AccessDeniedExceptionDecoder =
    JDP.decode EC2AccessDeniedException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>AWS Lambda was throttled by Amazon EC2 during Lambda function initialization using the execution role provided for the Lambda function.</p>
-}
type alias EC2ThrottledException =
    { type_ : Maybe String
    , message : Maybe String
    }



eC2ThrottledExceptionDecoder : JD.Decoder EC2ThrottledException
eC2ThrottledExceptionDecoder =
    JDP.decode EC2ThrottledException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>AWS Lambda received an unexpected EC2 client exception while setting up for the Lambda function.</p>
-}
type alias EC2UnexpectedException =
    { type_ : Maybe String
    , message : Maybe String
    , eC2ErrorCode : Maybe String
    }



eC2UnexpectedExceptionDecoder : JD.Decoder EC2UnexpectedException
eC2UnexpectedExceptionDecoder =
    JDP.decode EC2UnexpectedException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "eC2ErrorCode" (JD.nullable JD.string) Nothing




{-| <p>AWS Lambda was not able to create an Elastic Network Interface (ENI) in the VPC, specified as part of Lambda function configuration, because the limit for network interfaces has been reached.</p>
-}
type alias ENILimitReachedException =
    { type_ : Maybe String
    , message : Maybe String
    }



eNILimitReachedExceptionDecoder : JD.Decoder ENILimitReachedException
eNILimitReachedExceptionDecoder =
    JDP.decode ENILimitReachedException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The parent object that contains your environment's configuration settings.</p>
-}
type alias Environment =
    { variables : Maybe (Dict String String)
    }



environmentDecoder : JD.Decoder Environment
environmentDecoder =
    JDP.decode Environment
        |> JDP.optional "variables" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p>The parent object that contains error information associated with your configuration settings.</p>
-}
type alias EnvironmentError =
    { errorCode : Maybe String
    , message : Maybe String
    }



environmentErrorDecoder : JD.Decoder EnvironmentError
environmentErrorDecoder =
    JDP.decode EnvironmentError
        |> JDP.optional "errorCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The parent object returned that contains your environment's configuration settings or any error information associated with your configuration settings.</p>
-}
type alias EnvironmentResponse =
    { variables : Maybe (Dict String String)
    , error : Maybe EnvironmentError
    }



environmentResponseDecoder : JD.Decoder EnvironmentResponse
environmentResponseDecoder =
    JDP.decode EnvironmentResponse
        |> JDP.optional "variables" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "error" (JD.nullable environmentErrorDecoder) Nothing




{-| Type of HTTP response from eventSourceMappingConfi
-}
type alias EventSourceMappingConfiguration =
    { uUID : Maybe String
    , batchSize : Maybe Int
    , eventSourceArn : Maybe String
    , functionArn : Maybe String
    , lastModified : Maybe Date
    , lastProcessingResult : Maybe String
    , state : Maybe String
    , stateTransitionReason : Maybe String
    }



eventSourceMappingConfigurationDecoder : JD.Decoder EventSourceMappingConfiguration
eventSourceMappingConfigurationDecoder =
    JDP.decode EventSourceMappingConfiguration
        |> JDP.optional "uUID" (JD.nullable JD.string) Nothing
        |> JDP.optional "batchSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "eventSourceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "functionArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastModified" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastProcessingResult" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable JD.string) Nothing
        |> JDP.optional "stateTransitionReason" (JD.nullable JD.string) Nothing




{-| One of

* `EventSourcePosition_TRIM_HORIZON`
* `EventSourcePosition_LATEST`
* `EventSourcePosition_AT_TIMESTAMP`

-}
type EventSourcePosition
    = EventSourcePosition_TRIM_HORIZON
    | EventSourcePosition_LATEST
    | EventSourcePosition_AT_TIMESTAMP



eventSourcePositionDecoder : JD.Decoder EventSourcePosition
eventSourcePositionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TRIM_HORIZON" ->
                        JD.succeed EventSourcePosition_TRIM_HORIZON

                    "LATEST" ->
                        JD.succeed EventSourcePosition_LATEST

                    "AT_TIMESTAMP" ->
                        JD.succeed EventSourcePosition_AT_TIMESTAMP


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The code for the Lambda function.</p>
-}
type alias FunctionCode =
    { zipFile : Maybe String
    , s3Bucket : Maybe String
    , s3Key : Maybe String
    , s3ObjectVersion : Maybe String
    }



functionCodeDecoder : JD.Decoder FunctionCode
functionCodeDecoder =
    JDP.decode FunctionCode
        |> JDP.optional "zipFile" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3Bucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3Key" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3ObjectVersion" (JD.nullable JD.string) Nothing




{-| <p>The object for the Lambda function location.</p>
-}
type alias FunctionCodeLocation =
    { repositoryType : Maybe String
    , location : Maybe String
    }



functionCodeLocationDecoder : JD.Decoder FunctionCodeLocation
functionCodeLocationDecoder =
    JDP.decode FunctionCodeLocation
        |> JDP.optional "repositoryType" (JD.nullable JD.string) Nothing
        |> JDP.optional "location" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from functionConfi
-}
type alias FunctionConfiguration =
    { functionName : Maybe String
    , functionArn : Maybe String
    , runtime : Maybe Runtime
    , role : Maybe String
    , handler : Maybe String
    , codeSize : Maybe Int
    , description : Maybe String
    , timeout : Maybe Int
    , memorySize : Maybe Int
    , lastModified : Maybe String
    , codeSha256 : Maybe String
    , version : Maybe String
    , vpcConfig : Maybe VpcConfigResponse
    , deadLetterConfig : Maybe DeadLetterConfig
    , environment : Maybe EnvironmentResponse
    , kMSKeyArn : Maybe String
    }



functionConfigurationDecoder : JD.Decoder FunctionConfiguration
functionConfigurationDecoder =
    JDP.decode FunctionConfiguration
        |> JDP.optional "functionName" (JD.nullable JD.string) Nothing
        |> JDP.optional "functionArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "runtime" (JD.nullable runtimeDecoder) Nothing
        |> JDP.optional "role" (JD.nullable JD.string) Nothing
        |> JDP.optional "handler" (JD.nullable JD.string) Nothing
        |> JDP.optional "codeSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "timeout" (JD.nullable JD.int) Nothing
        |> JDP.optional "memorySize" (JD.nullable JD.int) Nothing
        |> JDP.optional "lastModified" (JD.nullable JD.string) Nothing
        |> JDP.optional "codeSha256" (JD.nullable JD.string) Nothing
        |> JDP.optional "version" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcConfig" (JD.nullable vpcConfigResponseDecoder) Nothing
        |> JDP.optional "deadLetterConfig" (JD.nullable deadLetterConfigDecoder) Nothing
        |> JDP.optional "environment" (JD.nullable environmentResponseDecoder) Nothing
        |> JDP.optional "kMSKeyArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getAccountSettings
-}
type alias GetAccountSettingsResponse =
    { accountLimit : Maybe AccountLimit
    , accountUsage : Maybe AccountUsage
    }



getAccountSettingsResponseDecoder : JD.Decoder GetAccountSettingsResponse
getAccountSettingsResponseDecoder =
    JDP.decode GetAccountSettingsResponse
        |> JDP.optional "accountLimit" (JD.nullable accountLimitDecoder) Nothing
        |> JDP.optional "accountUsage" (JD.nullable accountUsageDecoder) Nothing




{-| Type of HTTP response from getFunction
-}
type alias GetFunctionResponse =
    { configuration : Maybe FunctionConfiguration
    , code : Maybe FunctionCodeLocation
    }



getFunctionResponseDecoder : JD.Decoder GetFunctionResponse
getFunctionResponseDecoder =
    JDP.decode GetFunctionResponse
        |> JDP.optional "configuration" (JD.nullable functionConfigurationDecoder) Nothing
        |> JDP.optional "code" (JD.nullable functionCodeLocationDecoder) Nothing




{-| Type of HTTP response from getPolicy
-}
type alias GetPolicyResponse =
    { policy : Maybe String
    }



getPolicyResponseDecoder : JD.Decoder GetPolicyResponse
getPolicyResponseDecoder =
    JDP.decode GetPolicyResponse
        |> JDP.optional "policy" (JD.nullable JD.string) Nothing




{-| <p>One of the parameters in the request is invalid. For example, if you provided an IAM role for AWS Lambda to assume in the <code>CreateFunction</code> or the <code>UpdateFunctionConfiguration</code> API, that AWS Lambda is unable to assume you will get this exception. </p>
-}
type alias InvalidParameterValueException =
    { type_ : Maybe String
    , message : Maybe String
    }



invalidParameterValueExceptionDecoder : JD.Decoder InvalidParameterValueException
invalidParameterValueExceptionDecoder =
    JDP.decode InvalidParameterValueException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request body could not be parsed as JSON.</p>
-}
type alias InvalidRequestContentException =
    { type_ : Maybe String
    , message : Maybe String
    }



invalidRequestContentExceptionDecoder : JD.Decoder InvalidRequestContentException
invalidRequestContentExceptionDecoder =
    JDP.decode InvalidRequestContentException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The Security Group ID provided in the Lambda function VPC configuration is invalid.</p>
-}
type alias InvalidSecurityGroupIDException =
    { type_ : Maybe String
    , message : Maybe String
    }



invalidSecurityGroupIDExceptionDecoder : JD.Decoder InvalidSecurityGroupIDException
invalidSecurityGroupIDExceptionDecoder =
    JDP.decode InvalidSecurityGroupIDException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The Subnet ID provided in the Lambda function VPC configuration is invalid.</p>
-}
type alias InvalidSubnetIDException =
    { type_ : Maybe String
    , message : Maybe String
    }



invalidSubnetIDExceptionDecoder : JD.Decoder InvalidSubnetIDException
invalidSubnetIDExceptionDecoder =
    JDP.decode InvalidSubnetIDException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>AWS Lambda could not unzip the function zip file.</p>
-}
type alias InvalidZipFileException =
    { type_ : Maybe String
    , message : Maybe String
    }



invalidZipFileExceptionDecoder : JD.Decoder InvalidZipFileException
invalidZipFileExceptionDecoder =
    JDP.decode InvalidZipFileException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from invocation
-}
type alias InvocationResponse =
    { statusCode : Maybe Int
    , functionError : Maybe String
    , logResult : Maybe String
    , payload : Maybe String
    }



invocationResponseDecoder : JD.Decoder InvocationResponse
invocationResponseDecoder =
    JDP.decode InvocationResponse
        |> JDP.optional "statusCode" (JD.nullable JD.int) Nothing
        |> JDP.optional "functionError" (JD.nullable JD.string) Nothing
        |> JDP.optional "logResult" (JD.nullable JD.string) Nothing
        |> JDP.optional "payload" (JD.nullable JD.string) Nothing




{-| One of

* `InvocationType_Event`
* `InvocationType_RequestResponse`
* `InvocationType_DryRun`

-}
type InvocationType
    = InvocationType_Event
    | InvocationType_RequestResponse
    | InvocationType_DryRun



invocationTypeDecoder : JD.Decoder InvocationType
invocationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Event" ->
                        JD.succeed InvocationType_Event

                    "RequestResponse" ->
                        JD.succeed InvocationType_RequestResponse

                    "DryRun" ->
                        JD.succeed InvocationType_DryRun


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from invokeAsync
-}
type alias InvokeAsyncResponse =
    { status : Maybe Int
    }



invokeAsyncResponseDecoder : JD.Decoder InvokeAsyncResponse
invokeAsyncResponseDecoder =
    JDP.decode InvokeAsyncResponse
        |> JDP.optional "status" (JD.nullable JD.int) Nothing




{-| <p>Lambda was unable to decrypt the environment variables because KMS access was denied. Check the Lambda function's KMS permissions.</p>
-}
type alias KMSAccessDeniedException =
    { type_ : Maybe String
    , message : Maybe String
    }



kMSAccessDeniedExceptionDecoder : JD.Decoder KMSAccessDeniedException
kMSAccessDeniedExceptionDecoder =
    JDP.decode KMSAccessDeniedException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Lambda was unable to decrypt the environment variables because the KMS key used is disabled. Check the Lambda function's KMS key settings.</p>
-}
type alias KMSDisabledException =
    { type_ : Maybe String
    , message : Maybe String
    }



kMSDisabledExceptionDecoder : JD.Decoder KMSDisabledException
kMSDisabledExceptionDecoder =
    JDP.decode KMSDisabledException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Lambda was unable to decrypt the environment variables because the KMS key used is in an invalid state for Decrypt. Check the function's KMS key settings.</p>
-}
type alias KMSInvalidStateException =
    { type_ : Maybe String
    , message : Maybe String
    }



kMSInvalidStateExceptionDecoder : JD.Decoder KMSInvalidStateException
kMSInvalidStateExceptionDecoder =
    JDP.decode KMSInvalidStateException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Lambda was unable to decrypt the environment variables because the KMS key was not found. Check the function's KMS key settings. </p>
-}
type alias KMSNotFoundException =
    { type_ : Maybe String
    , message : Maybe String
    }



kMSNotFoundExceptionDecoder : JD.Decoder KMSNotFoundException
kMSNotFoundExceptionDecoder =
    JDP.decode KMSNotFoundException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAliases
-}
type alias ListAliasesResponse =
    { nextMarker : Maybe String
    , aliases : Maybe (List AliasConfiguration)
    }



listAliasesResponseDecoder : JD.Decoder ListAliasesResponse
listAliasesResponseDecoder =
    JDP.decode ListAliasesResponse
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "aliases" (JD.nullable (JD.list aliasConfigurationDecoder)) Nothing




{-| Type of HTTP response from listEventSourceMappings
-}
type alias ListEventSourceMappingsResponse =
    { nextMarker : Maybe String
    , eventSourceMappings : Maybe (List EventSourceMappingConfiguration)
    }



listEventSourceMappingsResponseDecoder : JD.Decoder ListEventSourceMappingsResponse
listEventSourceMappingsResponseDecoder =
    JDP.decode ListEventSourceMappingsResponse
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventSourceMappings" (JD.nullable (JD.list eventSourceMappingConfigurationDecoder)) Nothing




{-| Type of HTTP response from listFunctions
-}
type alias ListFunctionsResponse =
    { nextMarker : Maybe String
    , functions : Maybe (List FunctionConfiguration)
    }



listFunctionsResponseDecoder : JD.Decoder ListFunctionsResponse
listFunctionsResponseDecoder =
    JDP.decode ListFunctionsResponse
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "functions" (JD.nullable (JD.list functionConfigurationDecoder)) Nothing




{-| Type of HTTP response from listVersionsByFunction
-}
type alias ListVersionsByFunctionResponse =
    { nextMarker : Maybe String
    , versions : Maybe (List FunctionConfiguration)
    }



listVersionsByFunctionResponseDecoder : JD.Decoder ListVersionsByFunctionResponse
listVersionsByFunctionResponseDecoder =
    JDP.decode ListVersionsByFunctionResponse
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "versions" (JD.nullable (JD.list functionConfigurationDecoder)) Nothing




{-| One of

* `LogType_None`
* `LogType_Tail`

-}
type LogType
    = LogType_None
    | LogType_Tail



logTypeDecoder : JD.Decoder LogType
logTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "None" ->
                        JD.succeed LogType_None

                    "Tail" ->
                        JD.succeed LogType_Tail


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Lambda function access policy is limited to 20 KB.</p>
-}
type alias PolicyLengthExceededException =
    { type_ : Maybe String
    , message : Maybe String
    }



policyLengthExceededExceptionDecoder : JD.Decoder PolicyLengthExceededException
policyLengthExceededExceptionDecoder =
    JDP.decode PolicyLengthExceededException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request payload exceeded the <code>Invoke</code> request body JSON input limit. For more information, see <a href="http://docs.aws.amazon.com/lambda/latest/dg/limits.html">Limits</a>. </p>
-}
type alias RequestTooLargeException =
    { type_ : Maybe String
    , message : Maybe String
    }



requestTooLargeExceptionDecoder : JD.Decoder RequestTooLargeException
requestTooLargeExceptionDecoder =
    JDP.decode RequestTooLargeException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The resource already exists.</p>
-}
type alias ResourceConflictException =
    { type_ : Maybe String
    , message : Maybe String
    }



resourceConflictExceptionDecoder : JD.Decoder ResourceConflictException
resourceConflictExceptionDecoder =
    JDP.decode ResourceConflictException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The resource (for example, a Lambda function or access policy statement) specified in the request does not exist.</p>
-}
type alias ResourceNotFoundException =
    { type_ : Maybe String
    , message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `Runtime_nodejs`
* `Runtime_nodejs4.3`
* `Runtime_java8`
* `Runtime_python2.7`
* `Runtime_dotnetcore1.0`
* `Runtime_nodejs4.3-edge`

-}
type Runtime
    = Runtime_nodejs
    | Runtime_nodejs4_3
    | Runtime_java8
    | Runtime_python2_7
    | Runtime_dotnetcore1_0
    | Runtime_nodejs4_3_edge



runtimeDecoder : JD.Decoder Runtime
runtimeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "nodejs" ->
                        JD.succeed Runtime_nodejs

                    "nodejs4_3" ->
                        JD.succeed Runtime_nodejs4_3

                    "java8" ->
                        JD.succeed Runtime_java8

                    "python2_7" ->
                        JD.succeed Runtime_python2_7

                    "dotnetcore1_0" ->
                        JD.succeed Runtime_dotnetcore1_0

                    "nodejs4_3_edge" ->
                        JD.succeed Runtime_nodejs4_3_edge


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The AWS Lambda service encountered an internal error.</p>
-}
type alias ServiceException =
    { type_ : Maybe String
    , message : Maybe String
    }



serviceExceptionDecoder : JD.Decoder ServiceException
serviceExceptionDecoder =
    JDP.decode ServiceException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>AWS Lambda was not able to set up VPC access for the Lambda function because one or more configured subnets has no available IP addresses.</p>
-}
type alias SubnetIPAddressLimitReachedException =
    { type_ : Maybe String
    , message : Maybe String
    }



subnetIPAddressLimitReachedExceptionDecoder : JD.Decoder SubnetIPAddressLimitReachedException
subnetIPAddressLimitReachedExceptionDecoder =
    JDP.decode SubnetIPAddressLimitReachedException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `ThrottleReason_ConcurrentInvocationLimitExceeded`
* `ThrottleReason_FunctionInvocationRateLimitExceeded`
* `ThrottleReason_CallerRateLimitExceeded`

-}
type ThrottleReason
    = ThrottleReason_ConcurrentInvocationLimitExceeded
    | ThrottleReason_FunctionInvocationRateLimitExceeded
    | ThrottleReason_CallerRateLimitExceeded



throttleReasonDecoder : JD.Decoder ThrottleReason
throttleReasonDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ConcurrentInvocationLimitExceeded" ->
                        JD.succeed ThrottleReason_ConcurrentInvocationLimitExceeded

                    "FunctionInvocationRateLimitExceeded" ->
                        JD.succeed ThrottleReason_FunctionInvocationRateLimitExceeded

                    "CallerRateLimitExceeded" ->
                        JD.succeed ThrottleReason_CallerRateLimitExceeded


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p/>
-}
type alias TooManyRequestsException =
    { retryAfterSeconds : Maybe String
    , type_ : Maybe String
    , message : Maybe String
    , reason : Maybe ThrottleReason
    }



tooManyRequestsExceptionDecoder : JD.Decoder TooManyRequestsException
tooManyRequestsExceptionDecoder =
    JDP.decode TooManyRequestsException
        |> JDP.optional "retryAfterSeconds" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "reason" (JD.nullable throttleReasonDecoder) Nothing




{-| <p>The content type of the <code>Invoke</code> request body is not JSON.</p>
-}
type alias UnsupportedMediaTypeException =
    { type_ : Maybe String
    , message : Maybe String
    }



unsupportedMediaTypeExceptionDecoder : JD.Decoder UnsupportedMediaTypeException
unsupportedMediaTypeExceptionDecoder =
    JDP.decode UnsupportedMediaTypeException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>If your Lambda function accesses resources in a VPC, you provide this parameter identifying the list of security group IDs and subnet IDs. These must belong to the same VPC. You must provide at least one security group and one subnet ID.</p>
-}
type alias VpcConfig =
    { subnetIds : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    }



vpcConfigDecoder : JD.Decoder VpcConfig
vpcConfigDecoder =
    JDP.decode VpcConfig
        |> JDP.optional "subnetIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "securityGroupIds" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>VPC configuration associated with your Lambda function.</p>
-}
type alias VpcConfigResponse =
    { subnetIds : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    , vpcId : Maybe String
    }



vpcConfigResponseDecoder : JD.Decoder VpcConfigResponse
vpcConfigResponseDecoder =
    JDP.decode VpcConfigResponse
        |> JDP.optional "subnetIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "securityGroupIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing




