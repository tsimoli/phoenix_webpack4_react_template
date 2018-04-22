const path = require('path');
const ExtractTextPlugin = require('extract-text-webpack-plugin');
const CopyWebpackPlugin = require('copy-webpack-plugin');

module.exports = (env, options) => ({
    entry: './js/app.jsx',
    output: {
        filename: 'app.js',
        path: path.resolve(__dirname, '../priv/static/js')
    },
    module: {
        rules: [
            {
                test: /\.(js|jsx)$/,
                exclude: /node_modules/,
                use: ['babel-loader']
            },
            {
                test: /\.css$/,
                use: ExtractTextPlugin.extract({
                    fallback: 'style-loader',
                    use: {
                        loader: 'css-loader', options: { minimize: options.mode === 'production' }
                    }
                })
            }
        ]
    },
    plugins: [
        new ExtractTextPlugin('../css/app.css'),
        new CopyWebpackPlugin([{ from: 'static/', to: '../' }])
    ],
    resolve: {
        extensions: ['*', '.js', '.jsx'],
    }
});