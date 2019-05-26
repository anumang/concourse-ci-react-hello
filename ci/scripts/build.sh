#!/bin/sh

apk add --update bash nodejs npm

npm config set unsafe-perm true

npm install npm@latest -g

cd source-code/

npm install

npm run build

cp -R build/ ../build-dir

#test -f ../build-dir/*.html

#test -f ../build-dir/*.js