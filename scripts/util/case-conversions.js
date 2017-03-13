const camelize = require('camelize');

module.exports = camelize;

module.exports.lowCam = (x) => {
  const y = camelize(x);
  return y.length ? y[0].toLowerCase() + y.slice(1) : '';
};

module.exports.upCam = (x) => {
  const y = camelize(x);
  return y.length ? y[0].toUpperCase() + y.slice(1) : '';
};

module.exports.safeIdentifier = x => x
  .replace(/[^a-z0-9_]+/ig, '_')
  .replace(/^(type|port)$/, '$1_')
  ;
