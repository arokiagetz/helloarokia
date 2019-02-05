#!/bin/bash

set -e

cd "$(dirname "$0")/.."

TAG=$1
#echo "Getting ECR authorization token."
#DOCKER_LOGIN=`aws ecr get-login --region eu-west-1`
#eval $DOCKER_LOGIN
echo "Going to tag docker container with tag: $TAG"
docker build -f Dockerfile -t hello-arokia:v$TAG .
echo "Docker Built"
#docker push 227282114486.dkr.ecr.eu-west-1.amazonaws.com/sm-html5-editor:v$TAG
#echo "Pushed Docker image to ECR: 227282114486.dkr.ecr.eu-west-1.amazonaws.com/sm-html5-editor:v$TAG"


#rm -rf OUTPUT
#mkdir -p OUTPUT
#cp -r ci/* OUTPUT/

#echo "Tagging repo with tag v$TAG"
#git remote set-url origin ssh://git@stash.greekattic.local:7999/sm/sm-html5-editor.git
#git tag v$TAG
#git push origin v$TAG