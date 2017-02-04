const abbrev = /\((.*?)\)/;

module.exports = (metadata) => {
  const name = metadata.serviceAbbreviation || metadata.serviceFullName;
  const m = name.match(abbrev);
  return m
    ? m[1]
    : name
      .replace(/^(AWS|Amazon)/, '')
      .replace(/[^a-z0-9]/ig, '');
};
