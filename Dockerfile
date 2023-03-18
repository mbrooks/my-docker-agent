FROM jenkins/agent

USER root

RUN apt-get update \
    && apt-get install -y	\
		build-essential \
	&& apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER jenkins