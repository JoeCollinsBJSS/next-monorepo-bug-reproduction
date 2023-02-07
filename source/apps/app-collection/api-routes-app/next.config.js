const { join } = require('path');

/** @type {import('next').NextConfig} */
module.exports = {
  output: 'standalone',
  experimental: {
    outputFileTracingRoot: join(__dirname, "../../../..")
  }
}