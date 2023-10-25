FROM nginx:stable

RUN apt update && apt-get install sudo
RUN apt update &&\
    apt install -y ca-certificates curl gnupg &&\
    mkdir -p /etc/apt/keyrings &&\
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg &&\
    NODE_MAJOR=20 &&\
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list &&\
    apt-get update &&\
    apt-get install nodejs -y &&\
    npm install -g dockerode

WORKDIR /usr/share/nginx/html/
RUN rm index.html
COPY ./web_app/* .
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
