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
RUN apt-get -y install cmake
RUN apt-get -y install pkg-config
RUN apt-get -y install git
RUN apt-get -y install build-essential
RUN apt-get -y install git
RUN apt-get -y install python
RUN apt-get -y install python-pip
RUN pip install jsonschema
RUN pip install colorama
RUN pip install click
RUN pip install gitpython

RUN apt-get -y install wget
RUN apt-get -y install bc
RUN apt-get -y install unzip
RUN apt-get -y install flex bison
RUN apt-get -y install libc6-i386 lib32stdc++6 lib32z1

RUN groupadd -r --gid=1000 zerotri
RUN useradd -r --uid=1000 --gid=zerotri zerotri


USER zerotri
