FROM ubuntu:16.04
RUN apt-get -y update && apt-get -y install default-jre make

ENV SRC_HOME=/opt/src/
RUN mkdir -p $SRC_HOME
WORKDIR $SRC_HOME
