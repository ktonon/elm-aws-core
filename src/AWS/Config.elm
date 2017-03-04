module AWS.Config exposing (..)


type alias Credentials =
    { accessKeyId : String
    , secretAccessKey : String
    , sessionToken : Maybe String
    }


type alias EndpointPrefix =
    String


type alias Region =
    String


type alias Host =
    String


type Endpoint
    = RegionalEndpoint EndpointPrefix Region
    | GlobalEndpoint Host


type alias Service =
    { serviceName : String
    , endpoint : Endpoint
    , version : String
    , xAmzJsonVersion : Maybe String
    , xAmzTargetPrefix : String
    }
