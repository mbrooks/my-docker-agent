FROM jenkins/agent

USER root

RUN apt-get update \
	&& apt-get install -y \
		build-essential \
	&& apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common \
	&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
	&& add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
	&& apt-get update \
	&& apt-get install -y \
		docker-ce \
	&& apt-get clean \
 	&& rm -rf /var/lib/apt/lists/*

USER jenkins
