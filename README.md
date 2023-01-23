# next-monorepo-bug-reproduction
A reproduction of a bug we faced using NextJS in a monorepo 


# Reproduction
Place Next 13 package into a monorepo with other next packages and apps (for example I've used the `api-routes-app` example, but this seems to occur with all next examples and basic apps)
Run `pnpm install` and then (`./scripts/recreate.sh`) or the below:
```
#!/bin/bash

cd ./source/apps/app-collection/api-routes-app
pnpm run build
cp -r .next/static .next/standalone/.next/static
node .next/standalone/server.js
```
This will now error. The identical package and commands works if moved into it's own dir outside of a monorepo (eg, `cp -r . ~/api-routes-app` then running the above commands will have it successfully run). 
