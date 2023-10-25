#!/bin/bash
IMAGE_NAME="hello-world-nginx"
DOCKER_FILE_PATH="."
DEST_IMAGE_NAME="hello-world-nginx"
REGISTRY_URL="hanralatalliard/hello-world-nginx"
TAG_NAME="latest"
sudo docker build -t $IMAGE_NAME:$TAG_NAME $DOCKER_FILE_PATH
sudo docker tag $IMAGE_NAME:$TAG_NAME $REGISTRY_URL:$TAG_NAME
sudo docker push $REGISTRY_URL:$TAG_NAME
