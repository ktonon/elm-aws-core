module AWS.Core.Service
    exposing
        ( ApiVersion
        , Protocol
        , Region
        , Service
        , Signer
        , defineGlobal
        , defineRegional
        , ec2
        , endpointPrefix
        , host
        , json
        , jsonContentType
        , query
        , region
        , restJson
        , restXml
        , setJsonVersion
        , setSigningName
        , setTargetPrefix
        , signS3
        , signV2
        , signV4
        , signer
        , targetPrefix
        )

{-| AWS service configuration.


# Table of Contents

  - [Types](#types)
  - [Constructors](#constructors)
  - [Protocols](#protocols)
  - [Signatures](#signatures)
  - [Attributes](#attributes)


# Types

@docs Service, ApiVersion, Region, Protocol, Signer


# Constructors

Use either one of these to create a service definition.

@docs defineGlobal, defineRegional, setJsonVersion, setSigningName, setTargetPrefix


# Protocols

Use these functions to specify the AWS request protocol used by the service.

@docs ec2, json, query, restJson, restXml


# Signatures

Use these functions to specify the signature apiVersion used by a service.

@docs signV4, signV2, signS3


# Attributes

These functions are exposed so that [AWS.Core.Http](AWS-Core-Http) can properly
sign requests. They can be useful for debugging, testing, and logging, but
otherwise are not required.

@docs endpointPrefix, region, host, signer, targetPrefix, jsonContentType

-}

import AWS.Core.InternalTypes exposing (Protocol(..), Signer(..))


-- SERVICES


{-| Defines an AWS service.
-}
type Service
    = Service
        { endpointPrefix : String
        , apiVersion : ApiVersion
        , protocol : Protocol
        , signer : Signer
        , targetPrefix : String
        , jsonVersion : Maybe String
        , signingName : Maybe String
        , endpoint : Endpoint
        }



-- Still need to extend Service to include these
-- | uid | serviceAbbreviation | xmlNamespace | timestampFormat | checksumFormat |


{-| Version of a service.
-}
type alias ApiVersion =
    String


{-| Specifies JSON apiVersion.
-}
type alias JsonVersion =
    String


define :
    String
    -> ApiVersion
    -> Protocol
    -> Signer
    -> Service
define endpointPrefix apiVersion protocol signer =
    Service
        { endpointPrefix = endpointPrefix
        , protocol = protocol
        , signer = signer
        , apiVersion = apiVersion
        , targetPrefix =
            "AWS"
                ++ String.toUpper endpointPrefix
                ++ "_"
                ++ (apiVersion |> String.split "-" |> String.join "")
        , jsonVersion = Nothing
        , signingName = Nothing
        , endpoint = GlobalEndpoint
        }


{-| Creates a global service definition.

    let
        sts = AWS.Core.Service.defineGlobal "sts"
            "2011-06-15"
            query
            signV4
    in
    ( sts |> endpointPrefix
    , sts |> host
    )
    --> ( "sts"
    --> , "sts.amazonaws.com"
    --> )

-}
defineGlobal :
    String
    -> ApiVersion
    -> Protocol
    -> Signer
    -> Service
defineGlobal =
    define


{-| Creates a regional service definition.

    let
        serviceMaker = AWS.Core.Service.defineRegional "acm"
            "2015-12-08"
            json
            signV4
            (setJsonVersion "1.1")
        acm = serviceMaker "ca-central-1"
    in
    ( acm |> endpointPrefix
    , acm |> host
    )
    --> ( "acm"
    --> , "acm.ca-central-1.amazonaws.com"
    --> )

Your client library should not provide the region. Instead it should expose
a function `Region -> Service` by leaving out the last argument.

-}
defineRegional :
    String
    -> ApiVersion
    -> Protocol
    -> Signer
    -> (Service -> Service)
    -> Region
    -> Service
defineRegional endpointPrefix apiVersion protocol signer extra region =
    case
        define endpointPrefix apiVersion protocol signer
            |> extra
    of
        Service s ->
            Service { s | endpoint = RegionalEndpoint region }


{-| Set the JSON apiVersion.
-}
setJsonVersion : String -> Service -> Service
setJsonVersion jsonVersion (Service service) =
    Service { service | jsonVersion = Just jsonVersion }


{-| Set the signing name for the service.

Use if the service has a non-standard signing name.

-}
setSigningName : String -> Service -> Service
setSigningName name (Service service) =
    Service { service | signingName = Just name }


{-| Set the target prefix for the service.

Use this if the target prefix does NOT follow the format:

    "AWS"
        ++ String.toUpper endpointPrefix
        ++ "_"
        ++ (apiVersion |> String.split "-" |> String.join "")

-}
setTargetPrefix : String -> Service -> Service
setTargetPrefix prefix (Service service) =
    Service { service | targetPrefix = prefix }


{-| Set the target prefix.
-}
targetPrefix : Service -> String
targetPrefix (Service { targetPrefix }) =
    targetPrefix


{-| Name of the service.
-}
endpointPrefix : Service -> String
endpointPrefix (Service { endpointPrefix }) =
    endpointPrefix


{-| Service signature apiVersion.
-}
signer : Service -> Signer
signer (Service { signer }) =
    signer


{-| Gets the service JSON content type header value.
-}
jsonContentType : Service -> String
jsonContentType (Service { jsonVersion }) =
    (case jsonVersion of
        Just apiVersion ->
            "application/x-amz-json-" ++ apiVersion

        Nothing ->
            "application/json"
    )
        ++ "; charset=utf-8"



-- ENDPOINTS


{-| Defines an AWS service endpoint.
-}
type Endpoint
    = GlobalEndpoint
    | RegionalEndpoint Region


{-| An AWS region string.

For example `"us-east-1"`.

-}
type alias Region =
    String


{-| Create a regional endpoint given a region.
-}
regionalEndpoint : Region -> Endpoint
regionalEndpoint =
    RegionalEndpoint


{-| Create a global endpoint.
-}
globalEndpoint : Endpoint
globalEndpoint =
    GlobalEndpoint


{-| Service endpoint as a hostname.
-}
host : Service -> String
host (Service { endpoint, endpointPrefix }) =
    case endpoint of
        GlobalEndpoint ->
            endpointPrefix ++ ".amazonaws.com"

        RegionalEndpoint region ->
            endpointPrefix ++ "." ++ region ++ ".amazonaws.com"


{-| Service region.
-}
region : Service -> String
region (Service { endpoint }) =
    case endpoint of
        RegionalEndpoint region ->
            region

        GlobalEndpoint ->
            -- See http://docs.aws.amazon.com/general/latest/gr/sigv4_changes.html
            "us-east-1"



-- PROTOCOLS


{-| Enumerates AWS request protocols.

See [Protocols](#protocols) for constructors.

-}
type alias Protocol =
    AWS.Core.InternalTypes.Protocol


{-| EC2 request protocol.
-}
ec2 : Protocol
ec2 =
    EC2


{-| JSON request protocol.
-}
json : Protocol
json =
    JSON


{-| QUERY request protocol.
-}
query : Protocol
query =
    QUERY


{-| REST_JSON request protocol.
-}
restJson : Protocol
restJson =
    REST_JSON


{-| REST_XML request protocol.
-}
restXml : Protocol
restXml =
    REST_XML



-- SIGNERS


{-| Enumerates AWS signature versions.

See [Signatures](#signatures) for constructors.

-}
type alias Signer =
    AWS.Core.InternalTypes.Signer


{-| Use V4 signing.
-}
signV4 : Signer
signV4 =
    SignV4


{-| Use V2 signing.
-}
signV2 : Signer
signV2 =
    SignV2


{-| Use S3 signing.
-}
signS3 : Signer
signS3 =
    SignS3
