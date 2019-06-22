FROM node:8

ARG BUILD_DIR

WORKDIR /home/app

COPY ${BUILD_DIR} ./

EXPOSE 3000
CMD [ "npm", "start" ]