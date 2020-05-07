FROM ubuntu:18.04 as build
ARG workdir=/usr/src/app

RUN mkdir -p ${workdir}/share_folder
WORKDIR ${workdir}

RUN apt-get update
RUN apt-get -y install build-essential git zlib1g-dev libncurses5-dev libjson-perl python

COPY . .
RUN make all