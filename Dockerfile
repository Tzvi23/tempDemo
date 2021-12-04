FROM ubuntu:20.04

ARG MAVEN_VERSION=3.8.4
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/${MAVEN_VERSION}/binaries

RUN apt update && \
	apt install -y default-jdk && \
	java -version

RUN apt update && \
	apt install -y git curl 

RUN mkdir -p /usr/share/maven /usr/share/maven/ref \
	 && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
	 && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1 \
	 && rm -f /tmp/apache-maven.tar.gz \
	 && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn