var path = require('path');

module.exports = {
    entry: './src/Native/HMAC.pack.js',
    output: {
        filename: 'HMAC.out.js',
        path: path.resolve(__dirname, 'src/Native')
    },
    resolve: {
        modules: [
            "node_modules"
        ]
    }
};
