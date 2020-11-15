docker rm -f gligli-ui

docker run -d --name gligli-ui \
	-p 80:5000 \
	gligli-ui:0.1
