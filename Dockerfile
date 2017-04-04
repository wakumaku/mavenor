FROM ubuntu:latest

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
        software-properties-common \
        python-software-properties

RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update \
    && echo "yes" | apt-get install -y oracle-java8-installer \
    && echo "yes" |  apt-get install -y oracle-java8-set-default \
    && apt-get install -y maven

ARG PUID=1000
ARG PGID=1000
RUN groupadd -g $PGID mavenor \
    && useradd -u $PUID -g mavenor -m mavenor -d /home/mavenor

USER mavenor
WORKDIR /home/mavenor
