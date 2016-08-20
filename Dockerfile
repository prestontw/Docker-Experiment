FROM ubuntu:16.04
RUN apt-get -y update && apt-get -y install openjdk-9-jre make

ENV SRC_HOME=/opt/src/
RUN mkdir -p $SRC_HOME
WORKDIR $SRC_HOME
