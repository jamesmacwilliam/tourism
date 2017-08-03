const path = require('path');
var CopyWebpackPlugin = require('copy-webpack-plugin');

module.exports = {
  entry: {'app': "./web/static/js/app.js", 'polymer': "./web/static/js/polymer.js"},
  output: {
    path: path.resolve(__dirname, 'priv/static/build'),
    filename: "[name].js"
  },
  plugins: [
    new CopyWebpackPlugin([
      { from: './web/static/assets/images', to: '../images' },
      { from: './web/static/assets/bower_components/**/*js.map', to: path.resolve(__dirname, 'priv/static/build/[name].map') },
      { from: './web/static/assets/favicon.ico', to: '../favicon.ico' },
      { from: './web/static/assets/robots.txt', to: '../robots.txt' }
    ])
  ],
  module: {
    rules: [
      {
        test: /\.css$/,
        use: [
          'style-loader',
          'css-loader'
        ]
      },
      {
        test: /\.html$/,
        use: [
          'babel-loader',
          'polymer-webpack-loader'
        ]
      },
      {
        test: /\.(png|svg|jpg|gif)$/,
        use: 'file-loader'
      }
    ]
  }
}
