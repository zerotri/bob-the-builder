##################################################
# This docker file creates an Arm cross compiler
# platform from Ubuntu
##################################################

FROM ubuntu
MAINTAINER Wynter Woods
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get update
RUN apt-get update
RUN apt-get -y install build-essential
RUN apt-get -y install libusb-1.0-0-dev
RUN apt-get -y install libgtk2.0-dev
RUN apt-get -y install cmake
RUN apt-get -y install pkg-config
RUN apt-get -y install git
RUN apt-get -y install lintian

RUN apt-get -y install lib32stdc++6
RUN apt-get -y install lib32z1
RUN apt-get -y install build-essential
RUN apt-get -y install libncurses5-dev
RUN apt-get -y install mtd-utils
RUN apt-get -y install u-boot-tools
RUN apt-get -y install android-tools-fastboot
RUN apt-get -y install wget
RUN apt-get -y install rsync

RUN apt-get -y install git
RUN apt-get -y install python
RUN apt-get -y install bc
RUN apt-get -y install unzip
RUN apt-get -y install bison
RUN apt-get -y install flex
RUN apt-get -y install lzop
RUN locale-gen en_US.UTF-8
RUN groupadd -r --gid=1000 zerotri
RUN useradd -r --uid=1000 --gid=zerotri zerotri


USER zerotri
