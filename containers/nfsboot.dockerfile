##################################################
# This docker file creates an Arm cross compiler
# platform from Ubuntu
##################################################

FROM ubuntu:wily
MAINTAINER Wynter Woods
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get update
RUN apt-get -y install lib32stdc++6
RUN apt-get -y install lib32z1
RUN apt-get -y install build-essential
RUN apt-get -y install libncurses5-dev
RUN apt-get -y install mtd-utils
RUN apt-get -y install u-boot-tools
RUN apt-get -y install android-tools-fastboot
RUN apt-get -y install wget
RUN apt-get -y install rsync
RUN mkdir /opt/arm-toolchain
RUN mkdir -p /tmp/buildenv

RUN wget https://releases.linaro.org/14.11/components/toolchain/binaries/arm-linux-gnueabihf/gcc-linaro-4.9-2014.11-x86_64_arm-linux-gnueabihf.tar.xz -O /opt/arm-toolchain/toolchain.tar.xz

RUN mkdir -p /opt/arm-toolchain/linaro
RUN tar xf /opt/arm-toolchain/toolchain.tar.xz --strip-components 1 --directory /opt/arm-toolchain/linaro
RUN echo 'PATH=/opt/arm-toolchain/linaro/bin:$PATH' >> /root/.bashrc
RUN apt-get -y install git
RUN apt-get -y install python
RUN apt-get -y install bc
RUN apt-get -y install unzip
RUN apt-get -y install bison
RUN apt-get -y install flex
RUN apt-get -y install lzop 
RUN apt-get -y install mercurial
RUN apt-get -y install device-tree-compiler

RUN groupadd -r --gid=1000 docker
RUN useradd -r --uid=1000 --gid=docker docker

RUN git -C /opt clone http://github.com/kaplan2539/chip-buildroot
RUN apt-get -y install cpio

RUN make -C /opt/chip-buildroot chip_defconfig
RUN make -C /opt/chip-buildroot

RUN chown -R docker:docker /opt

USER docker
VOLUME ["/var/lib"]
