#!/bin/bash

cd ./source/apps/app-collection/api-routes-app
pnpm run build
cp -r .next/static .next/standalone/.next/static
node .next/standalone/server.js
