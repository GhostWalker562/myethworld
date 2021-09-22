const path = require("path");
var webpack = require("webpack");
const TerserPlugin = require("terser-webpack-plugin");

module.exports = [
  {
    entry: "./pack/superfluid/superfluid.js",
    mode: "production",
    output: {
      filename: "superfluid_pack.js",
      library: "superfluid",
      path: path.resolve(__dirname, "pack/superfluid"),
    },
    optimization: {
      minimize: true,
      minimizer: [new TerserPlugin()],
    },
  },
  // {
  //   entry: "./pack/polywrap/polywrap.ts",
  //   mode: "production",
  //   module: {
  //     rules: [
  //       {
  //         test: /\.tsx?$/,
  //         use: "ts-loader",
  //         exclude: /node_modules/,
  //       },
  //     ],
  //   },
  //   resolve: {
  //     extensions: [".tsx", ".ts", ".js"],
  //   },
  //   output: {
  //     filename: "polywrap_pack.js",
  //     library: "polywrap",
  //     path: path.resolve(__dirname, "pack/polywrap"),
  //   },
  //   optimization: {
  //     minimize: true,
  //     minimizer: [new TerserPlugin()],
  //   },
  // },
  // {
  //   entry: "./pack/paraswap/paraswap.ts",
  //   mode: "production",
  //   module: {
  //     rules: [
  //       {
  //         test: /\.tsx?$/,
  //         use: "ts-loader",
  //         exclude: /node_modules/,
  //       },
  //     ],
  //   },
  //   resolve: {
  //     extensions: [".tsx", ".ts", ".js"],
  //     fallback: {
  //       url: false,
  //       os: false,
  //       http: false,
  //       https: false,
  //       crypto: false,
  //       assert: false,
  //       stream: false,
  //       path: false,
  //     },
  //   },
  //   output: {
  //     filename: "paraswap_pack.js",
  //     library: "paraswap",
  //     path: path.resolve(__dirname, "pack/paraswap"),
  //   },
  //   optimization: {
  //     minimize: true,
  //     minimizer: [new TerserPlugin()],
  //   },
  //   plugins: [
  //     new webpack.DefinePlugin({
  //       "process.env.NODE_DEBUG": JSON.stringify("https"),
  //     }),
  //     new webpack.ProvidePlugin({
  //       Buffer: ["buffer", "Buffer"],
  //     }),
  //   ],
  // },
];
