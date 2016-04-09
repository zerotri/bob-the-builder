##################################################
# This docker file creates an x86 build
# environment from Debian:jessie
##################################################

FROM armv7/armhf-debian
MAINTAINER Wynter Woods

ADD qemu-arm-static /usr/bin/qemu-arm-static

RUN apt-get -y update
RUN apt-get -y install build-essential
RUN apt-get -y install libfreetype6-dev
RUN apt-get -y install libx11-dev
RUN apt-get -y install libxinerama-dev
RUN apt-get -y install libxrandr-dev
RUN apt-get -y install libxcursor-dev
RUN apt-get -y install mesa-common-dev
RUN apt-get -y install libasound2-dev
RUN apt-get -y install freeglut3-dev
RUN apt-get -y install libxcomposite-dev
RUN apt-get -y install libxft-dev

# RUN groupadd -r --gid=1000 zerotri
# RUN useradd -r --uid=1000 --gid=zerotri zerotri
# 


USER root
