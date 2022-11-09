const path = require('path');
const webpack = require('webpack');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const CopyWebpackPlugin = require('copy-webpack-plugin');


module.exports = {
    entry: {
        main: [
            "core-js/stable", 
            "regenerator-runtime/runtime", 
            "webpack-dev-server/client", 
            "webpack/hot/dev-server",
            './src/public/index.js'
        ]
    },
    output: {
        path: path.join(__dirname, 'dist/public'),
        publicPath: "/",
        filename: "js/[name].js"
    },
    target: "web",
    module: {
        rules: [
            {
                test: /\.js$/,
                exclude: /node_modules/,
                loader: 'babel-loader'
            },
            {
                test: /\.html$/,
                use: {
                    loader: 'html-loader'
                }
            },
            {
                test: /\.less$/i,
                use: ['style-loader', 'css-loader', 'less-loader']
            },
            {
                test: /\.(png|svg|jpg|jpeg|gif)$/i,
                use: [
                    {
                        loader: 'url-loader',
                        options: {
                            name: '[name].[ext]',
                            limit: false,
                            outputPath: 'img'
                        }
                    }
                ],
            },
            {
                test: /\.(woff|woff2|eot|ttf|otf)$/i,
                type: 'asset/resource',
                generator: {
                    publicPath: 'fonts/',
                    outputPath: 'fonts/'
                }
            },
        ]
    },
    devServer: {
        static: {
            directory: path.join(__dirname, './dist/public'),
        },
        open: true,
        compress: true,
        hot: true,
        port: 8081,
        // proxy: [{
        //     path: /'*/,
        //     target: 'http://localhost:3000',
        // }]
    },
    plugins: [
        new webpack.HotModuleReplacementPlugin(),
        new HtmlWebpackPlugin({
            template: "src/public/index.html",
            filename: "index.html",
            inject: 'body',
            excludeChunks: ['server']
        }),
        new CopyWebpackPlugin({
            patterns: [
                {
                    from: 'src/public/img/favicon',
                    to: 'img/favicon/[name].[ext]'
                }
            ]
        })
    ]
};