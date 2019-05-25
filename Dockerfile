FROM node:8

ARG BUILD_DIR=./build

WORKDIR /home/app

COPY ${BUILD_DIR}/* ./

EXPOSE 3000
CMD [ "npm", "start" ]