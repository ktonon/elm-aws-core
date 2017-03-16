AWS SDK for elm
===============

[![CircleCI](https://img.shields.io/circleci/project/github/ktonon/aws-sdk-elm/master.svg)](https://circleci.com/gh/ktonon/aws-sdk-elm)

__Experimental: Work in progress__

This repo contains scripts which read and translate the AWS SDK [apis/*.json][] files into an elm package. Eventually the generated code will be published to the elm package repository.

## Preview Docs

* Download [docs.json](https://s3.amazonaws.com/aws-sdk-elm/docs.json)
* Use [Elm Packages Doc Preview](http://package.elm-lang.org/help/docs-preview)

[apis/*.json]:https://github.com/aws/aws-sdk-js/tree/master/apis
[AWS SDK for JavaScript]:https://github.com/aws/aws-sdk-js

## Status

This section describes the current state of support for various AWS services. In time we aim to fix all of these issues.

__Protocols__

AWS services are divided up into the following protocols:

* __query__ [#42](/../../issues/42) -  used by `autoscaling`, `cloudformation`, `cloudsearch`, `elasticache`, `elasticbeanstalk`, `elasticloadbalancing`, `elasticloadbalancingv2`, `email`, `iam`, `importexport`, `monitoring`, `rds`, `redshift`, `sdb`, `sns`, `sqs`, `sts`
* __json__ [#43](/../../issues/43) - used by `acm`, `application-autoscaling`, `appstream`, `budgets`, `cloudhsm`, `cloudtrail`, `cloudbuild`, `codecommit`, `codedeploy`, `codepipeline`, `cognito-identity`, `cognito-idp`, `config`, `cur`, `datapipeline`, `devicefarm`, `directconnect`, `discovery`, `dms`, `ds`, `dynamodb`, `ecr`, `ecs`, `elasticmapreduce`, `events`, `firehose`, `gamelift`, `health`, `inspector`, `kinesis`, `kinesisanalytics`, `kms`, `lightsail`, `logs`, `machinelearning`, `marketplacecommerceanalytics`, `meteringmarketplace`, `opsworks`, `opsworksscm`, `rekognition`, `route53domains`, `servicecatalog`, `shield`, `sms`, `snowball`, `ssm`, `states`, `storagegateway`, `streams.dynamodb`, `support`, `swf`, `waf`, `waf-regional`, `workspaces`
* __rest-json__ [#44](/../../issues/44) - used by `apigateway`, `batch`, `clouddirectory`, `cloudsearchdomain`, `cognito-sync`, `elasticfilesystem`, `elastictranscoder`, `es`, `glacier`, `iot`, `iot-data`, `lambda`, `mobileanalytics`, `polly`, `xray`
* __rest-xml__ [#45](/../../issues/45) - used by `cloudfront`, `route53`
* __ec2__ [#46](/../../issues/46) - used by `ec2`

We are currently adding support for each of these protocols. Support will be added in the same order in which these protocols appear above.

__Signature Versions__

AWS services are divided up into the following protocols:

* __v4__ - most services
* __s3__ [#24](/../../issues/24) - only used by `s3`
* __v2__ [#47](/../../issues/47) - only used by `importexport` and `sdb`

We currently only support __v4__ but plan on adding support for __s3__ soon. Eventually __v2__ support will be added, but it is not high priority.

__Other limitations__

We are actively working on solving the following issues:

* __Recursive types__ [#10](/../../issues/10) - Affects `dynamodb` and `elasticmap`
* __Blob types__ [#29](/../../issues/29) - Affects `acm`, `apigateway`, `clouddirectory`, `cloudsearchdomain`, `cloudtrail`, `codecommit`, `directconnect`, `dms`, `dynamodb`, `ec2`, `ecr`, `email`, `firehose`, `glacier`, `iam`, `iot-data`, `kinesis`, `kms`, `lambda`, `polly`, `rekognition`, `s3`, `sns`, `sqs`, `streams.dynamodb`, `support`, `waf`, `waf-regional`
