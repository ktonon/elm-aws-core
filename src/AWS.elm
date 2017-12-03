module AWS exposing (version)

{-| AWS SDK for elm.

The elm-aws-core package provides functions and types that facilitate making
HTTP requests to AWS services. Use it to create user-friendly clients to
specific AWS services.


## Modules in this package

  - [AWS.Core.Service](AWS-Core-Service): Create a service definition. Every service client should define its own `Service` definition.
  - [AWS.Core.Credentials](AWS-Core-Credentials): Create AWS credentials used to sign requests.
  - [AWS.Core.Http](AWS-Core-Http): Create requests, sign, and send them. Signing and sending a request requires both a `Service` and `Credentials`.
  - [AWS.Core.Enum](AWS-Core-Enum): Many AWS services define enumerations. This small module provides functions to convert from Elm types to string values.


## Usage example

    import AWS.Core.Credentials as Credentials
    import AWS.Core.Http as Http exposing (Method(..))
    import AWS.Core.Service as Service
    import Json.Decode
    import Task

    let
        creds =
            Credentials.fromAccessKeys
                "ACCESS KEY ID"
                "SECRET ACCESS KEY"
        service =
            Service.defineGlobal
                "sts"
                "2011-06-15"
                Service.query
                Service.signV4
                (Service.setXmlNamespace "https://sts.amazonaws.com/doc/2011-06-15/")
        handler =
            \result ->
                case result of
                    Ok someValue ->
                        -- someValue is what you get from the decoder
                        -- that is provided to the request call below.
                        -- In this case, it would be an Int because
                        -- we are using Json.Decode.int as the decoder.
                        someValue /= -1
                    Err err ->
                        -- err is an Http.Error
                        -- See: http://package.elm-lang.org/packages/elm-lang/http/latest/Http#Error
                        False
    in
    Http.request
        GET
        "/some/path"
        Http.emptyBody
        Json.Decode.int
        |> Http.send service creds
        |> Task.attempt handler
        |> (/=) Cmd.none
    --> True

@docs version

-}


{-| elm-aws-core package version.

    AWS.version
    --> "1.1.0"

-}
version : String
version =
    "1.1.0"
