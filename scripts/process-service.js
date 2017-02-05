const camelize = require('camelize');
const fs = require('fs');
const sysPath = require('path');
const dots = require('./util/dots');
const moduleName = require('./util/module-name');

const lowCam = (x) => {
  const y = camelize(x);
  return y[0].toLowerCase() + y.slice(1);
};

const upCam = (x) => {
  const y = camelize(x);
  return y[0].toUpperCase() + y.slice(1);
};

const outRoot = sysPath.resolve(`${__dirname}/../src/AWS`);

const toBuiltIn = (sh) => {
  switch (sh.type) {
    case 'boolean': return 'Bool';
    case 'list': return 'List';
    case 'string': return 'String';
    default: return null;
  }
};

module.exports = (data) => {
  const mod = moduleName(data.metadata);
  const operations = Object.keys(data.operations).map((key) => {
    const op = data.operations[key];
    return Object.assign({
      funcName: lowCam(key),
    }, op);
  });

  const shapes = Object.keys(data.shapes)
    .map((key) => {
      const sh = data.shapes[key];
      return Object.assign({
        shapeName: upCam(key),
      }, sh);
    })
    .filter(sh => !toBuiltIn(sh));

  const context = {
    mod,
    operationNames: operations.map(op => op.funcName),
    operations,
    shapeNames: shapes.map(sh => sh.shapeName),
    shapes,
    metadata: data.metadata,
    documentation: data.documentation,
  };
  fs.writeFileSync(
    `${outRoot}/${mod}.elm`,
    dots.api(context),
    'utf8');
  return context;
};
