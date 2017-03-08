const fuzzy = require('fuzzy');

const normalize = key => key.toLowerCase().replace(/[^a-z0-9]/, '');

const toString = (param) => {
  if (param.value.enum) {
    return {
      key: param.key,
      value: `(AWS.Enum.toString ${param.key} |> Result.withDefault "")`,
      extraImport: 'import AWS.Enum',
    };
  } else if (param.value.type === 'String') {
    return {
      key: param.key,
      value: param.key,
    };
  }
  return {
    key: param.key,
    value: `(toString ${param.key})`,
  };
};

/*
 We have to do a fuzzy find on the list of input keys to the operation, because
 the name in the path param does not always exactly match. For example,

     apigateway CreateResource "/restapis/{restapi_id}/resources/{parent_id}"

 the path param is called `restapi_id` but the CreateResourceRequest member key
 that matches is called `restApiId`.
 */
const fuzzyFind = (fuzzyTerm, params) => {
  const term = normalize(fuzzyTerm);
  const keys = params.map(p => p.key);

  const shortList = fuzzy.filter(term, keys);
  if (shortList.length) {
    const key = shortList[0].original;
    return toString(params.find(p => p.key === key));
  }
  const param = params.find(p =>
    fuzzy.filter(p.key, [term]).length);
  if (param) {
    return toString(param);
  }
  throw new Error(`Could not find parameter for path term ${fuzzyTerm} among ${keys}`);
};

const pathParamPattern = /(\{(.+?)[+]?\})/g;

const replaceAll = (path, params) => {
  const extraImports = [];
  const usedKeys = [];
  const sumValue = path.replace(pathParamPattern, (m, g1, g2) => {
    const { key, value, extraImport } = fuzzyFind(g2, params);
    if (extraImport) {
      extraImports.push(extraImport);
    }
    usedKeys.push(key);
    return `" ++ ${value} ++ "`;
  });
  return {
    value: sumValue,
    extraImports,
    unusedParams: params.filter(p => usedKeys.indexOf(p.key) === -1),
  };
};

module.exports = (path, params) => {
  if (!pathParamPattern.test(path)) {
    return {
      requestPath: `"${path}"`,
      extraImports: [],
      unusedParams: params,
    };
  }
  const { value, extraImports, unusedParams } = replaceAll(path, params);
  return {
    requestPath: `("${value}")`,
    extraImports,
    unusedParams,
  };
};
