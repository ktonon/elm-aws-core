module.exports = metadata => (
  (metadata.serviceAbbreviation || metadata.serviceFullName)
    .replace(/^(AWS|Amazon)/, '')
    .replace(/[^a-z0-9]/ig, '')
);
