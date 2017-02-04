const fs = require('fs');

const filenamePattern = /^(.*?)-(\d{4}-\d{2}-\d{2})\.min\.json$/;

module.exports = (serviceRoot) => {
  const sources = {};

  fs.readdirSync(serviceRoot)
    .forEach((filename) => {
      const m = filename.match(filenamePattern);
      if (m) {
        const key = m[1];
        const version = Date.parse(m[2]);
        if (!sources[key] || sources[key].version < version) {
          sources[key] = { filename, version };
        }
      }
    });

  return Object.keys(sources).map(key =>
    sources[key].filename);
};
