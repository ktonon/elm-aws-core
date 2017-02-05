AWS SDK for elm
===============

[![CircleCI](https://img.shields.io/circleci/project/github/ktonon/aws-sdk-elm.svg)](https://circleci.com/gh/ktonon/aws-sdk-elm)

__Experimental: Work in progress__

This repo contains scripts which read and translate the AWS SDK [apis/*.json][] files into an elm package. Eventually I will publish the generated code to the elm package repository.

## Goals

Not sure about the feasibility of the following, but these are my goals:

* Make this a pure elm implementation of the AWS SDK (no falling back to JavaScript AWS SDK)
* Fully generated. No patching after the generation script is run.

## Todo

* [x] parse [apis/*.json][] files to get list of AWS APIs
* [x] generate one elm module per AWS API
  * [x] module documentation
* [ ] generate AWS operations as elm functions
  * [x] function name
  * [x] function documentation
  * [ ] function signature
  * [ ] function implementation
* [ ] generate AWS shapes as elm unions and records
  * [ ] type name
  * [ ] type documentation
  * [ ] type signature
* [ ] not sure yet what else is involved...
  * [ ] share common shapes as types between modules?
  * [ ] integration tests?

[apis/*.json]:https://github.com/aws/aws-sdk-js/tree/master/apis
[AWS SDK for JavaScript]:https://github.com/aws/aws-sdk-js
