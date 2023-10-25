echo off
set IMAGE_NAME=hello_world-dev
set CONTAINER_NAME=hello_world-dev
set PORT=8080
echo docker build -t %IMAGE_NAME% .
docker build -t %IMAGE_NAME% .
echo docker stop %CONTAINER_NAME%
docker stop %CONTAINER_NAME%
echo docker rm %CONTAINER_NAME%
docker rm %CONTAINER_NAME%
echo docker run --rm -it -d -p %PORT%:80 -v %cd%/web_app:"/usr/share/nginx/html/" --name %CONTAINER_NAME% %IMAGE_NAME%
docker run --rm -it -d -p %PORT%:80 -v %cd%/web_app:"/usr/share/nginx/html/" --name %CONTAINER_NAME% %IMAGE_NAME%
echo "Your image is exposed at: localhost:%PORT%"
