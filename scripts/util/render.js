const dots = require('./dots');

const render = {};

render.nothing = sh => Object.assign({
  shouldDefine: false,
}, sh);

render.enum = sh => Object.assign({
  shouldDefine: true,
  typeDef: dots.defineUnionType(sh),
  decoderDef: dots.defineUnionDecoder(sh),
}, sh);

render.enumDoc = dots.defineUnionDoc;

const memberType = ({ key, value }) =>
  `${key} : ${value.type}`;

const memberDecoder = ({ required, key, value }) =>
  [
    `JDP.${required ? 'required' : 'optional'}`,
    `"${key}"`,
    `${value.decoder}`,
  ].join(' ');

render.structure = sh => Object.assign({
  shouldDefine: sh.category !== 'request',
  typeDef: dots.defineRecordType(Object.assign({ memberType }, sh)),
  decoderDef: dots.defineRecordDecoder(Object.assign({ memberDecoder }, sh)),
}, sh);

module.exports = render;
