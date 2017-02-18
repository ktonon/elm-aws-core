module AWS exposing (..)

{-| AWS SDK for elm.

__Experimental: Work in progress__

@docs Credentials, ServiceConfig

-}


{-| Credentials for accessing AWS services.
-}
type alias Credentials =
    { accessKeyId : String
    , secretAccessKey : String
    , sessionToken : Maybe String
    }


{-| Configuration for an AWS service.

Each service module exposes a `config` function which is preferable to
constructing this record type directly.
-}
type alias ServiceConfig =
    { serviceName : String
    , version : String
    , xAmzJsonVersion : String
    , xAmzTargetPrefix : String
    , host : String
    , region : String
    , credentials : Maybe Credentials
    }
