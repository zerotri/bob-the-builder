##################################################
# This docker file creates an Arm cross compiler
# platform from Ubuntu
##################################################

FROM ubuntu
MAINTAINER Wynter Woods
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install build-essential
RUN apt-get -y install mingw-w64 mingw-w64-tools
RUN apt-get -y install git
RUN apt-get -y install bison
RUN apt-get -y install flex
RUN apt-get -y install libtool

RUN mkdir -p /tmp/buildenv

RUN groupadd -r --gid=1000 zerotri
RUN useradd -r --uid=1000 --gid=zerotri zerotri

USER zerotri
