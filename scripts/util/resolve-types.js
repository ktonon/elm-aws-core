const { lowCam, upCam, safeIdentifier } = require('./case-conversions');
const render = require('./render');

const jsonDecode = 'JD';
const jsonEncode = 'JE';

module.exports = (shapesWithoutNames, { inputShapes, outputShapes }) => {
  const shapes = {};
  Object.keys(shapesWithoutNames).forEach((rawName) => {
    const name = upCam(rawName);
    shapes[rawName] = Object.assign({ name }, shapesWithoutNames[rawName]);
  });

  const resolve = {};

  resolve.type = (sh) => {
    const typeResolver = resolve[sh.type];
    if (typeResolver) {
      return Object.assign({ name: sh.name }, typeResolver(sh));
    }
    throw new Error(`Could not find type resolver for ${JSON.stringify(sh)}`);
  };

  resolve.shape = sh =>
    resolve.type(shapes[sh.shape]);

  resolve.boolean = () => render.nothing({
    type: 'Bool',
    decoder: `${jsonDecode}.bool`,
    encoder: `${jsonEncode}.bool`,
    toQueryArg: 'toString',
  });

  resolve.float = () => render.nothing({
    type: 'Float',
    decoder: `${jsonDecode}.float`,
    encoder: `${jsonEncode}.float`,
    toQueryArg: 'toString',
  });

  resolve.double = resolve.float;

  resolve.integer = () => render.nothing({
    type: 'Int',
    decoder: `${jsonDecode}.int`,
    encoder: `${jsonEncode}.int`,
    toQueryArg: 'toString',
  });

  resolve.long = resolve.integer;

  resolve.list = (sh) => {
    const child = resolve.shape(sh.member);
    return render.nothing({
      type: `(List ${child.type})`,
      decoder: `(${jsonDecode}.list ${child.decoder})`,
      encoder: `(List.map (${child.encoder})) >> ${jsonEncode}.list`,
      toQueryArg: 'NOT SUPPORTED',
    });
  };

  const isEnumOf = pattern => key => (
    key.enum && key.enum.length &&
    key.enum.every(pattern.test.bind(pattern))
  );

  const isEnumOfFloats = isEnumOf(/\d+(\.\d+)/);

  resolve.map = (sh) => {
    const key = resolve.shape(sh.key);
    if (key.type !== 'String' && !key.enum) {
      throw new Error(`Unexpected map key type ${key.type}, don't know how to decode`);
    }
    const value = resolve.shape(sh.value);
    return isEnumOfFloats(key) ?
      render.nothing({
        type: `(Dict Float ${value.type})`,
        decoder: `(JDX.dict2 ${jsonDecode}.float ${value.decoder})`,
        encoder: `AWS.Enum.toFloat >> Result.withDefault 0.0 >> ${jsonEncode}.float`,
        toQueryArg: 'AWS.Enum.toFloat >> Result.withDefault 0.0 >> toString',
        extraImports: [
          'import AWS.Enum',
          'import Dict exposing (Dict)',
          'import Json.Decode.Extra as JDX',
        ],
      }) :
      render.nothing({
        type: `(Dict String ${value.type})`,
        decoder: `(${jsonDecode}.dict ${value.decoder})`,
        encoder: `AWS.Enum.toString >> Result.withDefault "" >> ${jsonEncode}.string`,
        toQueryArg: 'AWS.Enum.toString >> Result.withDefault ""',
        extraImports: [
          'import AWS.Enum',
          'import Dict exposing (Dict)',
        ],
      });
  };

  resolve.string = sh => (sh.enum
    ? resolve.enum(sh)
    : render.nothing({
      type: 'String',
      decoder: `${jsonDecode}.string`,
      encoder: `${jsonEncode}.string`,
      toQueryArg: '\\x -> x',
    }));

  resolve.blob = resolve.string; // TODO:

  resolve.timestamp = () => render.nothing({
    type: 'Date',
    decoder: 'JDX.date',
    encoder: `toUtcIsoString >> ${jsonEncode}.string`,
    toQueryArg: 'toUtcIsoString',
    extraImports: [
      'import Date exposing (Date)',
      'import Date.Extra exposing (toUtcIsoString)',
      'import Json.Decode.Extra as JDX',
    ],
  });

  resolve.enum = sh => render.enum({
    type: sh.name,
    decoder: `${lowCam(sh.name)}Decoder`,
    encoder: `AWS.Enum.toString >> Result.withDefault "" >> ${jsonEncode}.string`,
    toQueryArg: 'AWS.Enum.toString >> Result.withDefault ""',
    extraImports: [
      'import AWS.Enum',
    ],
    enum: sh.enum.map(safeIdentifier),
    doc: render.enumDoc(sh),
    category: 'union',
  });

  resolve.structure = (sh) => {
    const category = resolve.structureCategory(sh);
    return render.structure({
      type: sh.name,
      decoder: `${lowCam(sh.name)}Decoder`,
      encoder: `${lowCam(sh.name)}Encoder`,
      toQueryArg: 'NOT SUPPORTED',
      extraImports: [
        'import AWS.Encode',
      ],
      members: Object.keys(sh.members).map(key => ({
        required: sh.required && sh.required.indexOf(key) !== -1,
        key: safeIdentifier(lowCam(key)),
        value: resolve.shape(sh.members[key]),
      })),
      doc: category === 'response'
        ? `Type of HTTP response from ${lowCam(sh.name).slice(0, sh.name.length - 8)}`
        : sh.documentation,
      category,
    });
  };

  resolve.structureCategory = (sh) => {
    if (sh.exception) { return 'exception'; }
    if (outputShapes.indexOf(sh.name) !== -1) { return 'response'; }
    if (inputShapes.indexOf(sh.name) !== -1) { return 'request'; }
    return 'record';
  };

  const types = Object.keys(shapes).map(name =>
    resolve.type(Object.assign({ name }, shapes[name])));
  const byShape = {};
  types.forEach((t) => {
    byShape[t.type] = t;
  });
  types.findByShape = shape => byShape[shape];
  return types;
};
