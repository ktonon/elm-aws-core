module AWS exposing (..)

{-| AWS SDK for elm.

__Experimental: Work in progress__

@docs ServiceConfig, Credentials, credentials, AccessKeyId, SecretAccessKey, SessionToken

## Request Signing

@docs Request, SignedRequest, signV4

-}

import AWS.Config
import AWS.Signers.V4 exposing (sign)
import AWS.Http
import Date exposing (Date)
import Http


{-| Credentials for accessing AWS services.
-}
type Credentials
    = Credentials AWS.Config.Credentials


{-| The AWS access key ID.
-}
type alias AccessKeyId =
    String


{-| The AWS secret access key.
-}
type alias SecretAccessKey =
    String


{-| An optional AWS session token.
-}
type alias SessionToken =
    String


{-| Constructor for AWS Credentials
-}
credentials : AccessKeyId -> SecretAccessKey -> Maybe SessionToken -> Credentials
credentials accessKeyId secretAccessKey maybeToken =
    AWS.Config.Credentials accessKeyId secretAccessKey maybeToken
        |> Credentials


{-| Configuration for an AWS service.

Each service module exposes a `config` function which returns a ServiceConfig
for use with that service.
-}
type ServiceConfig
    = ServiceConfig AWS.Config.Service


{-| An unsigned AWS Request.

Call signV4 to produce a signed Http.Request
-}
type Request a
    = UnsignedRequest (AWS.Http.UnsignedRequest a)


{-| Alias for Http.Request

See http://package.elm-lang.org/packages/elm-lang/http/1.0.0/Http#Request
-}
type alias SignedRequest a =
    Http.Request a


{-| Sign an unsigned request, given the current time
-}
signV4 : Request a -> Date -> ServiceConfig -> SignedRequest a
signV4 req date serviceConfig =
    case ( req, serviceConfig ) of
        ( UnsignedRequest unsignedReq, ServiceConfig config ) ->
            AWS.Signers.V4.sign unsignedReq date config
