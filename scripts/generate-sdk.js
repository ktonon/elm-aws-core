const fs = require('fs');
const sysPath = require('path');
const processService = require('./process-service');

const serviceRoot = sysPath.resolve(`${__dirname}/../node_modules/aws-sdk/apis`);
if (!fs.existsSync(serviceRoot)) {
  console.log('Run `npm install` before running this script');
  process.exit(1);
}

const jsonSources = fs.readdirSync(serviceRoot)
  .filter(path => path.endsWith('.min.json'))
  // .filter(path => /dynamodb-2012/.test(path))
  ;

jsonSources.forEach((filename) => {
  const path = `${serviceRoot}/${filename}`;
  console.log(`${filename}...`);
  if (fs.existsSync(path)) {
    try {
      const desc = JSON.parse(fs.readFileSync(path, 'utf8'));
      processService(desc);
    } catch (err) {
      console.error(`error processing ${filename}: ${err}`);
    }
  } else {
    console.error(`no such file: ${filename}`);
  }
});
