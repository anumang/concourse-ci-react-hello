#!/bin/bash

echo "Application:    ${APP}"
echo "Namespace:      ${NAMESPACE}"
echo "Environment:    ${ENVIRONMENT}"
echo "Swarm:          ${SWARM_HOST}"
echo "Port:           ${PORT}"

#CI_DIR=source-code/ci

#IMAGE_REPOSITORY=$(cat app-image/repository)
#IMAGE_DIGEST=$(cat app-image/digest)

#IMAGE="${IMAGE_REPOSITORY}@${IMAGE_DIGEST}"
#REPLICAS=2
#GIT_SHA=$(cat source-code/.git/ref)

#echo "Application:    ${APP}"
#echo "Namespace:      ${NAMESPACE}"
#echo "Environment:    ${ENVIRONMENT}"
#echo "Image:          ${IMAGE}"
#echo "Port:           ${PORT}"
#echo "Git SHA:        ${GIT_SHA}"
#echo "VERSION:        ${VERSION}"
#echo "Swarm:          ${SWARM_HOST}"

#rm -f docker-compose.yml temp.yml  
#( echo "cat <docker-compose.yml";
#  cat source-code/ci/templates/docker-compose.tmp.yml;
#  echo "EOF";
#) >temp.yml
#. temp.yml
#cat docker-compose.yml