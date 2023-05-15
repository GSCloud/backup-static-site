# Static Docker Micro Site

Demo:
`docker run -d --rm -p 3000:3000 --name static-site gscloudcz/backup-static-site:latest`

This is a micro site container builder showing up when a backup of the Docker container is under way.

* `make` - show the command menu
* `make build` - build the Docker image
* `make push` - push image to the Docker registry
* `make scan` - scan image using the Snyk scanner
* `make start` - start the container
* `make stop` - stop (kill) the container

Edit **.env** file to your needs.

Forked from [https://github.com/lipanski/docker-static-website].  
Author: Fred Brooker 💌 <git@gscloud.cz>  
GS Cloud Ltd. [https://gscloud.cz] ⛅️
