const fs = require('fs');
const sysPath = require('path');
const moduleName = require('./module-name');

const dots = require('dot').process({
  path: sysPath.resolve(`${__dirname}/../templates`),
  templateSettings: {
    strip: false,
  },
});

const outRoot = sysPath.resolve(`${__dirname}/../src/AWS`);

module.exports = (data) => {
  data.moduleName = moduleName(data.metadata);
  if (data.moduleName === 'undefined' || !data.moduleName) {
    console.log(data);
    process.exit(1);
  }
  const mod = dots.api(data);
  fs.writeFileSync(`${outRoot}/${data.moduleName}.elm`, mod, 'utf8');
};
