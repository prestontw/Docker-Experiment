FROM ubuntu:16.04
RUN apt-get -y update && apt-get -y install python python3 make

ENV SRC_HOME=/opt/src/
RUN mkdir -p $SRC_HOME
WORKDIR $SRC_HOME
