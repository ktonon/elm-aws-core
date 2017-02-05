const camelize = require('camelize');
const fs = require('fs');
const sysPath = require('path');
const dots = require('./util/dots');
const moduleName = require('./util/module-name');

const lowCam = (x) => {
  const y = camelize(x);
  return y[0].toLowerCase() + y.slice(1);
};

const outRoot = sysPath.resolve(`${__dirname}/../src/AWS`);

module.exports = (data) => {
  const mod = moduleName(data.metadata);
  const operations = Object.keys(data.operations).map((key) => {
    const op = data.operations[key];
    return Object.assign({
      funcName: lowCam(key),
    }, op);
  });
  const context = {
    mod,
    operationNames: operations.map(op => op.funcName),
    operations,
    metadata: data.metadata,
    documentation: data.documentation,
  };
  fs.writeFileSync(
    `${outRoot}/${mod}.elm`,
    dots.api(context),
    'utf8');
  return context;
};
