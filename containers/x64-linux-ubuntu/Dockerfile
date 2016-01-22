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

RUN groupadd -r --gid=1000 zerotri
RUN useradd -r --uid=1000 --gid=zerotri zerotri


USER zerotri
