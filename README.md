# My Jenkins Docker Agent

My Custom Jenkins Docker Agent that contains the following tools:
* Jenkins Build Agent
* Make
* Docker-in-docker

## Running
Note: You must mount the docker socket to run docker-in-docker
```
$ docker run -ti --rm -v /var/run/docker.sock:/var/run/docker.sock my-jenkins-docker-agent /bin/bash
```