#!/bin/sh

apk add --update bash nodejs npm

npm config set unsafe-perm true

npm install npm@latest -g

cd source-code/

npm install

npm run test

if [ $? -ne 0 ]
then
    echo unit tests failed!
else
    echo unit tests succeed.
fi
