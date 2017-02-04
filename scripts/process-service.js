const fs = require('fs');
const sysPath = require('path');
const dots = require('./util/dots');
const moduleName = require('./util/module-name');

const outRoot = sysPath.resolve(`${__dirname}/../src/AWS`);

module.exports = (data) => {
  data.moduleName = moduleName(data.metadata);
  fs.writeFileSync(
    `${outRoot}/${data.moduleName}.elm`,
    dots.api(data),
    'utf8');
  return data;
};
