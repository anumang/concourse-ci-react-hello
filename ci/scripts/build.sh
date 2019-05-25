#!/bin/sh

mkdir build-dir

apk add --update bash nodejs npm

npm config set unsafe-perm true

npm install npm@latest -g

cd source-code/

npm install

npm run build

if [ $? -ne 0 ]
then
    echo Build Failed!
    exit 1;
else
    echo Build Succeed.
fi

cp -R public/ ../build-dir/public

test -f ../build-dir/public/*.html
test -f ../build-dir/public/*.js
