const fs = require('fs');
const sysPath = require('path');
const dots = require('./util/dots');
const findLatestSources = require('./util/find-latest-sources');
const processService = require('./process-service');

const serviceRoot = sysPath.resolve(`${__dirname}/../apis`);
if (!fs.existsSync(serviceRoot)) {
  process.stdout.write('Run `npm install` before running this script\n');
  process.exit(1);
}

const sources = findLatestSources(serviceRoot)
  .filter(source => /^(?!(streams\.)?dynamo|elasticmap)/.test(source))
  .map((filename) => {
    const path = `${serviceRoot}/${filename}`;
    if (fs.existsSync(path)) {
      const desc = JSON.parse(fs.readFileSync(path, 'utf8'));
      if (desc.version === '2.0') {
        process.stdout.write('.');
        return processService(desc);
      }
      process.stdout.write('s');
    } else {
      process.stderr.write(`no such file: ${filename}\n`);
    }
    return null;
  })
  .filter(x => x);

fs.writeFileSync(
  sysPath.resolve(`${__dirname}/../elm-package.json`),
  dots.elmPackage(sources),
  'utf8');

fs.writeFileSync(
  sysPath.resolve(`${__dirname}/../src/Native/HMAC.js`),
  dots.HMAC({
    crypto: fs.readFileSync(
      sysPath.resolve(`${__dirname}/../src/Native/HMAC.out.js`),
      'utf8'),
  }),
  'utf8');

process.stdout.write('\n');
