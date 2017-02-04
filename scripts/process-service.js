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
const docsRoot = 'http://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS';

module.exports = (data) => {
  const mod = moduleName(data.metadata);
  const opNames = Object.keys(data.operations).map(lowCam);
  const context = {
    apiVersion: data.metadata.apiVersion,
    link: `${docsRoot}/${mod}.html`,
    mod,
    opNames,
    ops: Object.keys(data.operations).map((key) => {
      const name = lowCam(key);
      return {
        name,
        link: `${docsRoot}/${mod}.html#${name}-property`,
      };
    }),
    serviceFullName: data.metadata.serviceFullName,
  };
  fs.writeFileSync(
    `${outRoot}/${mod}.elm`,
    dots.api(context),
    'utf8');
  return context;
};
