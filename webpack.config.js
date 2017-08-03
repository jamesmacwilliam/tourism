var CopyWebpackPlugin = require('copy-webpack-plugin');

module.exports = {
  entry: {'app': "./web/static/js/app.js", 'polymer': "./web/static/js/polymer.js"},
  output: {
    path: "./priv/static/build",
    filename: "[name].js"
  },
  plugins: [
    new CopyWebpackPlugin([
      { from: './web/static/assets/images', to: '../images' },
      { from: './web/static/assets/favicon.ico', to: '../favicon.ico' },
      { from: './web/static/assets/robots.txt', to: '../robots.txt' }
    ])
  ],
  module: {
    loaders: [
      {
        test: /\.css$/,
        loaders: [
          'style-loader',
          'css-loader'
        ]
      },
      {
        test: /\.(png|svg|jpg|gif|html)$/,
        loader: 'file-loader'
      }
    ]
  }
}
