module AWS.Util exposing (..)

import AWS
import AWS.Config


toConfigCreds : AWS.Credentials -> AWS.Config.Credentials
toConfigCreds opaqueCreds =
    case opaqueCreds of
        AWS.Credentials creds ->
            creds
