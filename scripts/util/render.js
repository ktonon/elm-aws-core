const dots = require('./dots');

const render = module.exports = {};

render.nothing = sh => Object.assign({
  shouldDefine: false,
}, sh);

render.enum = sh => Object.assign({
  shouldDefine: true,
  typeDef: dots.defineUnionType(sh),
  decoderDef: dots.defineUnionDecoder(sh),
}, sh);

render.enumDoc = dots.defineUnionDoc;

const memberDecoder = ({ required, key, value }) =>
  [
    `JDP.${required ? 'required' : 'optional'}`,
    `"${key}"`,
    `${value.decoder}`,
  ].join(' ');

render.structure = sh => Object.assign({
  shouldDefine: sh.category !== 'request',
  typeDef: dots.defineRecordType(sh),
  decoderDef: dots.defineRecordDecoder(Object.assign({ memberDecoder }, sh)),
}, sh);
