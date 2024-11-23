FROM lipanski/docker-static-website:latest
COPY httpd.conf index.html ./
