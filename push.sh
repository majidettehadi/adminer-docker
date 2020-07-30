#!/usr/bin/env bash

# Push docker images according to repo name
set -x
. build.properties
docker push $REPO_NAME:latest
