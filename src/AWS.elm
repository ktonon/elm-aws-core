module AWS exposing (..)

{-| AWS SDK for elm.

__Experimental: Work in progress__

@docs Credentials, ServiceConfig

-}


{-| Credentials for accessing AWS services
-}
type alias Credentials =
    { accessKeyId : String
    , secretAccessKey : String
    }


{-| Configuration for an AWS service
-}
type alias ServiceConfig =
    { host : String
    , version : String
    , xAmzJsonVersion : String
    , xAmzTargetPrefix : String
    , credentials : Maybe Credentials
    }
