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
  if (sh.enum) {
    return null;
  }
  switch (sh.type) {
    case 'boolean': return 'Bool';
    case 'double': return 'Float';
    case 'float': return 'Float';
    case 'integer': return 'Int';
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

  const records = shapes.filter(sh => !sh.enum);
  const unions = shapes
    .filter(sh => sh.enum)
    .map((sh) => {
      sh.enum = sh.enum.map(name =>
        `${sh.shapeName}_${name.replace(/[^a-z0-9]/ig, '_')}`);
      return sh;
    });

  if (unions.lenth > 0) {
    console.log('union!', mod);
  }
  const context = {
    mod,
    operationNames: operations.map(op => op.funcName),
    operations,
    recordNames: records.map(sh => sh.shapeName),
    records,
    unionNames: unions.map(sh => sh.shapeName),
    unions,
    metadata: data.metadata,
    documentation: data.documentation,
  };
  fs.writeFileSync(
    `${outRoot}/${mod}.elm`,
    dots.api(context),
    'utf8');
  return context;
};
