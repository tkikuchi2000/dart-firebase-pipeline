#!/bin/bash
VERSION=$1
if [ -z ${VERSION} ]; then exit 1;fi
TAG="tkikuchi/dart-firebase-pipeline:${VERSION}"
docker build --tag ${TAG} .
docker login
docker push ${TAG}
