#!/bin/bash

cd ./source/apps/app-collection/api-routes-app
pnpm run build
mkdir .next/standalone/source/apps/app-collection/api-routes-app/.next/static
cp -r .next/static .next/standalone/source/apps/app-collection/api-routes-app/.next
# node .next/standalone/source/apps/app-collection/api-routes-app/server.js

mkdir ~/standalone-dir
cp -r .next ~/standalone-dir
cd ~/standalone-dir/.next/standalone/source/apps/app-collection/api-routes-app/
node server.js