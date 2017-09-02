module AWS exposing (version)

{-| AWS SDK for elm.

The elm-aws-core package provides functions and types that facilitate making
HTTP requests to AWS services. Use it to create user-friendly clients to
specific AWS services.


# Modules in this package

  - [AWS.Core.Service](AWS-Core-Service): Create a service definition. Every service client should define its own `Service` definition.
  - [AWS.Core.Credentials](AWS-Core-Credentials): Create AWS credentials used to sign requests.
  - [AWS.Core.Http](AWS-Core-Http): Create requests, sign, and send them. Signing and sending a request requires both a `Service` and `Credentials`.
  - [AWS.Core.Enum](AWS-Core-Enum): Many AWS services define enumerations. This small module provides functions to convert from Elm types to string values.

@docs version

-}


{-| elm-aws-core package version.

    AWS.version
    --> "1.0.0"

-}
version : String
version =
    "1.0.0"
