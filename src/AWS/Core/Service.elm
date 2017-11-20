module AWS.Core.Service
    exposing
        ( ApiVersion
        , Protocol
        , Region
        , Service
        , Signer
        , TimestampFormat
        , defineGlobal
        , defineRegional
        , ec2
        , endpointPrefix
        , host
        , iso8601
        , json
        , jsonContentType
        , acceptType
        , query
        , region
        , restJson
        , restXml
        , rfc822
        , setJsonVersion
        , setSigningName
        , setTargetPrefix
        , setTimestampFormat
        , setXmlNamespace
        , setIsDigitalOcean
        , signS3
        , signV2
        , signV4
        , signer
        , targetPrefix
        , unixTimestamp
        )

{-| AWS service configuration.


# Table of Contents

  - [Types](#types)
  - [Constructors](#constructors)
  - [Protocols](#protocols)
  - [Signatures](#signatures)
  - [Timestamp Formats](#timestamp-formats)
  - [Attributes](#attributes)


# Types

@docs Service, ApiVersion, Region, Protocol, Signer, TimestampFormat


# Constructors

Use either one of these to create a service definition.

@docs defineGlobal, defineRegional, setJsonVersion, setSigningName, setTargetPrefix, setTimestampFormat, setXmlNamespace, setHost


# Protocols

Use these functions to specify the AWS request protocol used by the service.

@docs ec2, json, query, restJson, restXml


# Signatures

Use these functions to specify the signature version used by a service.

@docs signV4, signV2, signS3


# Timestamp Formats

Use these functions to specify the timestamp format used by a service.

@docs iso8601, rfc822, unixTimestamp


# Attributes

These functions are exposed so that [AWS.Core.Http](AWS-Core-Http) can properly
sign requests. They can be useful for debugging, testing, and logging, but
otherwise are not required.

@docs endpointPrefix, region, host, signer, targetPrefix, jsonContentType, acceptType

-}

import AWS.Core.InternalTypes
    exposing
        ( Protocol(..)
        , Signer(..)
        , TimestampFormat(..)
        )


-- SERVICES


{-| Defines an AWS service.
-}
type Service
    = Service
        { endpointPrefix : String
        , apiVersion : ApiVersion
        , protocol : Protocol
        , signer : Signer
        , jsonVersion : Maybe String
        , signingName : Maybe String
        , targetPrefix : String
        , timestampFormat : TimestampFormat
        , xmlNamespace : Maybe String
        , endpoint : Endpoint
        , isDigitalOcean : Bool
        }


{-| Version of a service.
-}
type alias ApiVersion =
    String


{-| Specifies JSON version.
-}
type alias JsonVersion =
    String


define :
    String
    -> ApiVersion
    -> Protocol
    -> Signer
    -> (Service -> Service)
    -> Service
define endpointPrefix apiVersion protocol signer extra =
    Service
        { endpointPrefix = endpointPrefix
        , protocol = protocol
        , signer = signer
        , apiVersion = apiVersion
        , jsonVersion = Nothing
        , signingName = Nothing
        , targetPrefix = defaultTargetPrefix endpointPrefix apiVersion
        , timestampFormat = defaultTimestampFormat protocol
        , xmlNamespace = Nothing
        , endpoint = GlobalEndpoint
        , isDigitalOcean = False
        }
        |> extra


{-| Creates a global service definition.

    let
        service = defineGlobal "sts" "2011-06-15" query signV4
            (setXmlNamespace "https://sts.amazonaws.com/doc/2011-06-15/")
    in
    ( service |> endpointPrefix
    , service |> host
    , service |> targetPrefix
    )
    --> ( "sts"
    --> , "sts.amazonaws.com"
    --> , "AWSSTS_20110615"
    --> )

-}
defineGlobal :
    String
    -> ApiVersion
    -> Protocol
    -> Signer
    -> (Service -> Service)
    -> Service
defineGlobal =
    define


{-| Creates a regional service definition.

    let
        acm = defineRegional "acm" "2015-12-08" json signV4
            (setJsonVersion "1.1" >> setTargetPrefix "CertificateManager")
        service = acm "ca-central-1"
    in
    ( service |> endpointPrefix
    , service |> host
    , service |> targetPrefix
    )
    --> ( "acm"
    --> , "acm.ca-central-1.amazonaws.com"
    --> , "CertificateManager"
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
        define endpointPrefix apiVersion protocol signer extra
    of
        Service s ->
            Service { s | endpoint = RegionalEndpoint region }



-- OPTIONAL SETTERS


{-| Set the JSON apiVersion.

Use this if `jsonVersion` is provided in the metadata.

-}
setJsonVersion : String -> Service -> Service
setJsonVersion jsonVersion (Service service) =
    Service { service | jsonVersion = Just jsonVersion }


{-| Set the signing name for the service.

Use this if `signingName` is provided in the metadata.

-}
setSigningName : String -> Service -> Service
setSigningName name (Service service) =
    Service { service | signingName = Just name }


{-| Set the target prefix for the service.

Use this if `targetPrefix` is provided in the metadata.

-}
setTargetPrefix : String -> Service -> Service
setTargetPrefix prefix (Service service) =
    Service { service | targetPrefix = prefix }


{-| Set the timestamp format for the service.

Use this if `timestampFormat` is provided in the metadata.

-}
setTimestampFormat : TimestampFormat -> Service -> Service
setTimestampFormat format (Service service) =
    Service { service | timestampFormat = format }


{-| Set the XML namespace for the service.

Use this if `xmlNamespace` is provided in the metadata.

-}
setXmlNamespace : String -> Service -> Service
setXmlNamespace namespace (Service service) =
    Service { service | xmlNamespace = Just namespace }


{-| Set the flag for Digital Ocean's Spaces service.

This defaults to False, meaning you're using Amazon's S3.

-}
setIsDigitalOcean : Bool -> Service -> Service
setIsDigitalOcean isDigitalOcean (Service service) =
    Service { service | isDigitalOcean = isDigitalOcean }


-- GETTERS


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


{-| Service signature version.
-}
signer : Service -> Signer
signer (Service { signer }) =
    signer


{-| Gets the service JSON content type header value.
-}
jsonContentType : Service -> String
jsonContentType (Service { protocol, jsonVersion }) =
    (if protocol == restXml then
         "application/xml"
     else
         case jsonVersion of
             Just apiVersion ->
                 "application/x-amz-json-" ++ apiVersion

             Nothing ->
                 "application/json"
    )
        ++ "; charset=utf-8"


{-| Gets the service Accept header value.
-}
acceptType : Service -> String
acceptType (Service { protocol }) =
    if protocol == restXml then
        "application/xml"
    else
        "application/json"


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
host (Service { endpoint, endpointPrefix, isDigitalOcean }) =
    if isDigitalOcean then
        case endpoint of
            GlobalEndpoint ->
                "nyc3.digitaloceanspaces.com"
                    
            RegionalEndpoint region ->
                region ++ ".digitaloceanspaces.com"
    else
        case endpoint of
            GlobalEndpoint ->
                endpointPrefix ++ ".amazonaws.com"

            RegionalEndpoint region ->
                endpointPrefix ++ "." ++ region ++ ".amazonaws.com"

{-| Service region.
-}
region : Service -> String
region (Service { endpoint, isDigitalOcean }) =
    case endpoint of
        RegionalEndpoint region ->
            region

        GlobalEndpoint ->
            if isDigitalOcean then
                "ny3c"
            else
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



-- TIMESTAMP FORMATS


{-| Enumerates timestamp formats.

See [Timestamp Formats](#timestamp-formats) for constructors.

-}
type alias TimestampFormat =
    AWS.Core.InternalTypes.TimestampFormat


{-| Use the timestamp format ISO8601.
-}
iso8601 : TimestampFormat
iso8601 =
    ISO8601


{-| Use the timestamp format RCF822.
-}
rfc822 : TimestampFormat
rfc822 =
    RFC822


{-| Use the timestamp format UnixTimestamp.
-}
unixTimestamp : TimestampFormat
unixTimestamp =
    UnixTimestamp



-- HELPERS


defaultTargetPrefix : String -> ApiVersion -> String
defaultTargetPrefix endpointPrefix apiVersion =
    "AWS"
        ++ String.toUpper endpointPrefix
        ++ "_"
        ++ (apiVersion |> String.split "-" |> String.join "")


{-| See aws-sdk-js

`lib/model/shape.js`: function TimestampShape

-}
defaultTimestampFormat : Protocol -> TimestampFormat
defaultTimestampFormat protocol =
    case protocol of
        JSON ->
            UnixTimestamp

        REST_JSON ->
            UnixTimestamp

        _ ->
            ISO8601
