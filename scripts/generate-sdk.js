const fs = require('fs');
const sysPath = require('path');
const dots = require('./util/dots');
const findLatestSources = require('./util/find-latest-sources');
const processService = require('./process-service');

const serviceRoot = sysPath.resolve(`${__dirname}/../apis`);
if (!fs.existsSync(serviceRoot)) {
  console.log('Run `npm install` before running this script');
  process.exit(1);
}

const sources = findLatestSources(serviceRoot)
  .filter(source => /^([a-c]|data)/.test(source))
  .map((filename) => {
    const path = `${serviceRoot}/${filename}`;
    if (fs.existsSync(path)) {
      const desc = JSON.parse(fs.readFileSync(path, 'utf8'));
      if (desc.version === '2.0') {
        console.log(`Processing: ${filename}...`);
        return processService(desc);
      }
      console.log(`Skipping: ${filename}`);
    } else {
      console.error(`no such file: ${filename}`);
    }
    return null;
  })
  .filter(x => x);

fs.writeFileSync(
  sysPath.resolve(`${__dirname}/../elm-package.json`),
  dots.elmPackage(sources),
  'utf8');
