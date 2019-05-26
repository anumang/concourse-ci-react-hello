#!/bin/sh

apk add --update gettext

echo "Application:    ${APP}"
echo "Namespace:      ${NAMESPACE}"
echo "Environment:    ${ENVIRONMENT}"
echo "Swarm:          ${SWARM_HOST}"
echo "Port:           ${PORT}"

CI_DIR=source-code/ci
DCK_TMP=source-code/ci/templates/docker-compose.tmp.yml

IMAGE_REPOSITORY=$(cat app-image/repository)
IMAGE_DIGEST=$(cat app-image/digest)

IMAGE="${IMAGE_REPOSITORY}@${IMAGE_DIGEST}"
GIT_SHA=$(cat source-code/.git/ref)

echo "Git SHA:        ${GIT_SHA}"
echo "VERSION:        ${VERSION}"

# eval "cat <<< \"$(<source-code/ci/templates/docker-compose.tmp.yml)\" > docker-compose.yml" 2> /dev/null
envsubst < source-code/ci/templates/docker-compose.tmp.yml > docker-compose.yml
cat docker-compose.yml