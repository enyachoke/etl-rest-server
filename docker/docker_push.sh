#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push  enyachoke/etl-services:"$TRAVIS_BRANCH"