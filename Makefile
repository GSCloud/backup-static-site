#@author Fred Brooker <git@gscloud.cz>
include .env

all:
	@echo 'make: build | push | scan | start | stop'

build:
	docker build --pull -t ${TAG} .

push:
	docker push ${TAG}

scan:
	docker scan ${TAG}

start:
	docker run -d --rm -p 3000:3000 --name ${NAME} ${TAG}
	@echo "\n🙂 navigate here: http://localhost:3000"

stop:
	docker kill ${NAME}
