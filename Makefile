CONTAINER_NAME=my-jenkins-docker-agent

build:
	docker build . -t $(CONTAINER_NAME)
.PHONY: build

dev: build
	docker run -u root -it -v /var/run/docker.sock:/var/run/docker.sock $(CONTAINER_NAME) /bin/bash
.PHONY: dev