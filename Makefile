CONTAINER_NAME=my-jenkins-docker-agent

build:
	docker build . -t $(CONTAINER_NAME)
.PHONY: build

dev: build
	docker run -u root -it $(CONTAINER_NAME) /bin/bash
.PHONY: dev