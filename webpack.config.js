var glob = require("glob");

module.exports = {
  entry: {'app': "./web/static/js/app.js", 'polymer': "./web/static/js/polymer.js"},
  output: {
    path: "./priv/static/build",
    filename: "[name].js"
  },
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
