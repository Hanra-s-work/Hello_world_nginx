#!/bin/bash
IMAGE_NAME="hello_world-dev"
CONTAINER_NAME="hello_world-dev"
PORT="8080"
echo "sudo docker build -t $IMAGE_NAME ."
sudo docker build -t $IMAGE_NAME .
echo "sudo docker stop $CONTAINER_NAME"
sudo docker stop $CONTAINER_NAME
echo "sudo docker rm $CONTAINER_NAME"
sudo docker rm $CONTAINER_NAME
echo "sudo docker run --rm -it -d -p $PORT:80 -v $(pwd)/web_app:"/usr/share/nginx/html/" --name $CONTAINER_NAME $IMAGE_NAME"
sudo docker run --rm -it -d -p $PORT:80 -v $(pwd)/web_app:"/usr/share/nginx/html/" --name $CONTAINER_NAME $IMAGE_NAME
echo "Your image is exposed at: localhost:$PORT"
