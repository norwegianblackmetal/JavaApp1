docker rm -f gligli-ui

docker run -d --name gligli-ui -p 3000:3000 gligli-ui:0.1
