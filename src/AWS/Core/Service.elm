module AWS.Core.Service
    exposing
        ( Protocol
        , Region
        , Service
        , Signer
        , Version
        , defineGlobal
        , defineRegional
        , ec2
        , host
        , json
        , jsonContentType
        , name
        , query
        , region
        , restJson
        , restXml
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

@docs Service, Version, Region, Protocol, Signer


# Constructors

Use either one of these to create a service definition.

@docs defineGlobal, defineRegional


# Protocols

Use these functions to specify the AWS request protocol used by the service.

@docs ec2, json, query, restJson, restXml


# Signatures

Use these functions to specify the signature version used by a service.

@docs signV4, signV2, signS3


# Attributes

These functions are exposed so that [AWS.Core.Http](AWS-Core-Http) can properly
sign requests. They can be useful for debugging, testing, and logging, but
otherwise are not required.

@docs name, region, host, signer, targetPrefix, jsonContentType

-}

import AWS.Core.InternalTypes exposing (Protocol(..), Signer(..))


-- SERVICES


{-| Defines an AWS service.
-}
type Service
    = Service
        { name : String
        , version : Version
        , protocol : Protocol
        , signer : Signer
        , xAmzTargetPrefix : String
        , xAmzJsonVersion : Maybe String
        , endpoint : Endpoint
        }


{-| Version of a service.
-}
type alias Version =
    String


{-| Specifies JSON version.
-}
type alias JsonVersion =
    String


define :
    Endpoint
    -> String
    -> Version
    -> Protocol
    -> Signer
    -> Maybe JsonVersion
    -> Service
define endpoint name version protocol signer jsonVersion =
    Service
        { name = name
        , endpoint = endpoint
        , protocol = protocol
        , signer = signer
        , version = version
        , xAmzTargetPrefix =
            "AWS"
                ++ String.toUpper name
                ++ "_"
                ++ (version |> String.split "-" |> String.join "")
        , xAmzJsonVersion = jsonVersion
        }


{-| Creates a global service definition.

    let
        sts = AWS.Core.Service.defineGlobal "sts"
            "2011-06-15"
            query
            signV4
            Nothing -- No JSON version
    in
    ( sts |> name
    , sts |> host
    )
    --> ( "sts"
    --> , "sts.amazonaws.com"
    --> )

-}
defineGlobal :
    String
    -> Version
    -> Protocol
    -> Signer
    -> Maybe JsonVersion
    -> Service
defineGlobal =
    define GlobalEndpoint


{-| Creates a regional service definition.

    let
        acm = AWS.Core.Service.defineRegional "acm"
            "2015-12-08"
            json
            signV4
            (Just "1.1")
            "ca-central-1"
    in
    ( acm |> name
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
    -> Version
    -> Protocol
    -> Signer
    -> Maybe JsonVersion
    -> Region
    -> Service
defineRegional name version protocol signer jsonVersion region =
    define (RegionalEndpoint region) name version protocol signer jsonVersion


{-| Set the JSON version.
-}
setJsonVersion : String -> Service -> Service
setJsonVersion jsonVersion (Service service) =
    Service { service | xAmzJsonVersion = Just jsonVersion }


{-| Set the target prefix.
-}
targetPrefix : Service -> String
targetPrefix (Service { xAmzTargetPrefix }) =
    xAmzTargetPrefix


{-| Name of the service.
-}
name : Service -> String
name (Service { name }) =
    name


{-| Service signature version.
-}
signer : Service -> Signer
signer (Service { signer }) =
    signer


{-| Gets the service JSON content type header value.
-}
jsonContentType : Service -> String
jsonContentType (Service { xAmzJsonVersion }) =
    (case xAmzJsonVersion of
        Just version ->
            "application/x-amz-json-" ++ version

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
host (Service { endpoint, name }) =
    case endpoint of
        GlobalEndpoint ->
            name ++ ".amazonaws.com"

        RegionalEndpoint region ->
            name ++ "." ++ region ++ ".amazonaws.com"


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
