set IMAGE_NAME="hello-world-nginx"
set DOCKER_FILE_PATH="."
set DEST_IMAGE_NAME="hello-world-nginx"
set REGISTRY_URL="hanralatalliard/hello-world-nginx"
set TAG_NAME="latest"
docker build -t %IMAGE_NAME%:%TAG_NAME% %DOCKER_FILE_PATH%
docker tag %IMAGE_NAME%:%TAG_NAME% %REGISTRY_URL%:%TAG_NAME%
docker push %REGISTRY_URL%:%TAG_NAME%
