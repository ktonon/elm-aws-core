const { lowCam, upCam, safeIdentifier } = require('./case-conversions');
const render = require('./render');

const jsonDecode = 'JD';

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
  });

  resolve.float = () => render.nothing({
    type: 'Float',
    decoder: `${jsonDecode}.float`,
  });

  resolve.double = resolve.float;

  resolve.integer = () => render.nothing({
    type: 'Int',
    decoder: `${jsonDecode}.int`,
  });

  resolve.long = resolve.integer;

  resolve.list = (sh) => {
    const child = resolve.shape(sh.member);
    return render.nothing({
      type: `(List ${child.type})`,
      decoder: `(${jsonDecode}.list ${child.decoder})`,
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
        extraImports: [
          'import Dict exposing (Dict)',
          'import Json.Decode.Extra as JDX',
        ],
      }) :
      render.nothing({
        type: `(Dict String ${value.type})`,
        decoder: `(${jsonDecode}.dict ${value.decoder})`,
        extraImports: ['import Dict exposing (Dict)'],
      });
  };

  resolve.string = sh => (sh.enum
    ? resolve.enum(sh)
    : render.nothing({
      type: 'String',
      decoder: `${jsonDecode}.string`,
    }));

  resolve.blob = resolve.string; // TODO:

  resolve.timestamp = () => render.nothing({
    type: 'Date',
    decoder: 'JDX.date',
    extraImports: [
      'import Date exposing (Date)',
      'import Json.Decode.Extra as JDX',
    ],
  });

  resolve.enum = sh => render.enum({
    type: sh.name,
    decoder: `${lowCam(sh.name)}Decoder`,
    enum: sh.enum.map(safeIdentifier),
    doc: render.enumDoc(sh),
    category: 'union',
  });

  resolve.structure = (sh) => {
    const category = resolve.structureCategory(sh);
    return render.structure({
      type: sh.name,
      decoder: `${lowCam(sh.name)}Decoder`,
      members: Object.keys(sh.members).map(key => ({
        required: true,
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
