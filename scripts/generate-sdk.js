const fs = require('fs');
const sysPath = require('path');
const dots = require('./util/dots');
const findLatestSources = require('./util/find-latest-sources');
const processService = require('./process-service');

const serviceRoot = sysPath.resolve(`${__dirname}/../node_modules/aws-sdk/apis`);
if (!fs.existsSync(serviceRoot)) {
  console.log('Run `npm install` before running this script');
  process.exit(1);
}

const sources = findLatestSources(serviceRoot)
  .map((filename) => {
    const path = `${serviceRoot}/${filename}`;
    if (fs.existsSync(path)) {
      try {
        const desc = JSON.parse(fs.readFileSync(path, 'utf8'));
        if (desc.version === '2.0') {
          console.log(`Processing: ${filename}...`);
          return processService(desc);
        }
        console.log(`Skipping: ${filename}`);
      } catch (err) {
        console.error(`error processing ${filename}: ${err}`);
      }
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
