const dots = require('./dots');

const render = {};

render.nothing = sh => Object.assign({
  exposeAs: null,
}, sh);

render.enum = sh => Object.assign({
  exposeAs: `${sh.type}(..)`,
  typeDef: dots.defineUnionType(sh),
  decoderDef: dots.defineUnionDecoder(sh),
}, sh);

render.enumDoc = dots.defineUnionDoc;

const memberType = ({ required, key, value }) => (
  required
    ? `${key} : ${value.type}`
    : `${key} : Maybe ${value.type}`
);

const memberDecoder = ({ required, key, value }) => (
  required
    ? `JDP.required "${key}" ${value.decoder}`
    : `JDP.optional "${key}" (JD.nullable ${value.decoder}) Nothing`
);

const memberEncoder = ({ required, key, value }) => (
  required
    ? `(::) ( "${key}", data.${key} |> (${value.encoder}) )`
    : `AWS.Encode.optionalMember (${value.encoder}) ( "${key}", data.${key} )`);

render.structure = sh => Object.assign({
  exposeAs: sh.category !== 'request' ? sh.type : null,
  typeDef: dots.defineRecordType(Object.assign({ memberType }, sh)),
  decoderDef: dots.defineRecordDecoder(Object.assign({ memberDecoder }, sh)),
  encoderDef: dots.defineRecordEncoder(Object.assign({ memberEncoder }, sh)),
}, sh);

module.exports = render;
