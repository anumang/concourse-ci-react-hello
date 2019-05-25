#!/bin/sh

apk add --update bash nodejs npm

npm config set unsafe-perm true

npm install npm@latest -g

cd source-code/

npm install

npm run build

if [ $? -ne 0 ]
then
    echo Failed!
    exit 1;
else
    echo Succeed
fi

echo test1

cp -R build/ ../build-dir

echo test2

test -f ../build-dir/*.html

echo test3

test -f ../build-dir/*.js

echo test4