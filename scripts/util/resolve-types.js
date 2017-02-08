const { lowCam, safeIdentifier } = require('./case-conversions');
const render = require('./render');

const safeName = name => name.replace(/^(type)$/, '$1_');
const jsonDecode = 'JD';

module.exports = (shapesWithoutNames) => {
  const shapes = {};
  Object.keys(shapesWithoutNames).forEach((name) => {
    shapes[name] = Object.assign({ name }, shapesWithoutNames[name]);
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

  resolve.map = (sh) => {
    const key = resolve.shape(sh.key);
    if (key.type !== 'String' && !key.enum) {
      console.warn(`Unexpected map key type ${key.type}, don't know how to decode`);
      process.exit(1);
    }
    const value = resolve.shape(sh.value);
    return render.nothing({
      type: `(Dict ${key.type} ${value.type})`,
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
  resolve.timestamp = resolve.string; // TODO:

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
        key: safeName(lowCam(key)),
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
    if (sh.name.endsWith('Request')) { return 'request'; }
    if (sh.name.endsWith('Response')) { return 'response'; }
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
