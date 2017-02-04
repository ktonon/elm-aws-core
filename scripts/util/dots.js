const dot = require('dot');
const sysPath = require('path');

module.exports = dot.process({
  path: sysPath.resolve(`${__dirname}/../../templates`),
  templateSettings: {
    strip: false,
  },
});
