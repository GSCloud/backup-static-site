#@author Fred Brooker <git@gscloud.cz>
include .env

all:
	@echo 'make: build | push | start | stop'

build:
	docker build --pull -t ${TAG} .
push:
	docker push ${TAG}
start:
	docker run -d --rm -p ${PORT}:${PORT} --name ${NAME} ${TAG}
	@echo "\n🙂 navigate here: http://localhost:${PORT}"
stop:
	docker kill ${NAME}

everything: stop build push start
