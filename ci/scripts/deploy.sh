#!/bin/sh

apk add --update gettext openssh

mkdir ~/.ssh

echo "$SWARM_SSH_PRIVATE" > ~/.ssh/id_rsa

echo "Application:    ${APP}"
echo "Namespace:      ${NAMESPACE}"
echo "Environment:    ${ENVIRONMENT}"
echo "Swarm:          ${SWARM_HOST}"
echo "Port:           ${PORT}"

CI_DIR=source-code/ci
DCK_TMP=source-code/ci/templates/docker-compose.tmp.yml

IMAGE_REPOSITORY=$(cat app-image/repository)
IMAGE_DIGEST=$(cat app-image/digest)
GIT_SHA=$(cat source-code/.git/ref)

export IMAGE="${IMAGE_REPOSITORY}@${IMAGE_DIGEST}"

echo "Git SHA:        ${GIT_SHA}"
echo "VERSION:        ${VERSION}"
echo "Git SHA:        ${IMAGE}"

envsubst < ${DCK_TMP} > docker-compose.yml
cat docker-compose.yml

docker -H ${SWARM_HOST} stack deploy --compose-file docker-compose.yml ${APP}
