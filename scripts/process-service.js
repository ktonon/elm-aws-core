const fs = require('fs');
const sysPath = require('path');
const dots = require('./util/dots');
const moduleName = require('./util/module-name');
const resolveTypes = require('./util/resolve-types');
const { lowCam, upCam } = require('./util/case-conversions');
const { unique } = require('./util/set');

const outRoot = sysPath.resolve(`${__dirname}/../src/AWS`);

module.exports = (data) => {
  const types = resolveTypes(data.shapes);
  const mod = moduleName(data.metadata);

  const operations = Object.keys(data.operations)
    .map((key) => {
      const op = data.operations[key];
      if (!op.http) {
        console.log(`${mod}: ${key} doesn't have an http attribute!`);
        process.exit(1);
      }
      return {
        name: lowCam(key),
        doc: op.documentation,
        http: op.http,
        input: op.input && types.findByShape(op.input.shape),
        output: op.output
          ? types.findByShape(op.output.shape)
          : { type: '()', decoder: '(JD.succeed ())' },
        errors: op.errors,
      };
    });

  const categories = [
    'response',
    'record',
    'union',
    'exception',
  ].map(key => ({
    key,
    name: upCam(key),
    types: types.filter(t => t.category === key),
  })).filter(c => c.types.length > 0);

  const extraImports = unique(
    types.reduce((acc, t) => acc.concat(t.extraImports || []), []));

  const context = {
    categories,
    documentation: data.documentation,
    metadata: data.metadata,
    mod,
    operationNames: operations.map(op => op.funcName),
    operations,
    types,
    extraImports,
  };

  fs.writeFileSync(
    `${outRoot}/${mod}.elm`,
    dots.api(context),
    'utf8');

  return context;
};
