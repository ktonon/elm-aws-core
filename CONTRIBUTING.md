# Contributing

## Formatting

Please use `elm-format` [release 0.7.0-exp](https://github.com/avh4/elm-format/releases/tag/0.7.0-exp) to format `.elm` files.

```shell
npm install -g elm-format@exp
```

See [Editor Integration](https://github.com/avh4/elm-format#editor-integration) to run `elm-format` automatically whenever you save a file.

## Testing

Please ensure that the tests succeed before you create a pull request.

```shell
cd .../elm-aws-core
elm-doc-test
elm-test
```
