module AWS.Core.InternalTypes
    exposing
        ( Protocol(..)
        , Signer(..)
        , TimestampFormat(..)
        )


type Protocol
    = EC2
    | JSON
    | QUERY
    | REST_JSON
    | REST_XML


type Signer
    = SignV4
    | SignV2
    | SignS3


type TimestampFormat
    = ISO8601
    | RFC822
    | UnixTimestamp
