module AWS.Config exposing (..)


type alias Credentials =
    { accessKeyId : String
    , secretAccessKey : String
    , sessionToken : Maybe String
    }


type alias Service =
    { serviceName : String
    , version : String
    , xAmzJsonVersion : String
    , xAmzTargetPrefix : String
    , host : String
    , region : String
    }
