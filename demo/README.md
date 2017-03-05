# AWS SDK for elm demo

Using this to test making requests to real AWS services.

## Setup

Create a file `Config.elm`:

```elm
module Config exposing (..)


accessKeyId : String
accessKeyId =
    "YOUR_ACCESS_KEY"


secretAccessKey : String
secretAccessKey =
    "YOUR_SECRET_KEY"


region : String
region =
    "us-east-1"
```

This file is imported by `Main` but ignored by version control. I think in a production SPA the better way would be to use AWS Cognito, but for this simple test page loading the credentials directly is easier.

## Running

```shell
$ elm reactor
```

Then visit [http://localhost:8000/Main.elm](http://localhost:8000/Main.elm). For now we don't have any UI, so you can open up your browser dev tools to see the network activity.
