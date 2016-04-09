FROM debian:jessie
MAINTAINER Wynter Woods
# ADD http://opensource.nextthing.co/chippian/rootfs/i386.rootfs.tar.gz /

RUN apt-get update
RUN apt-get install -y wget

RUN echo "\ndeb http://ftp.us.debian.org/debian/ jessie main\n" | tee -a /etc/apt/sources.list
RUN echo "deb http://emdebian.org/tools/debian/ jessie main\n" | tee -a /etc/apt/sources.list
RUN wget -qO - http://emdebian.org/tools/debian/emdebian-toolchain-archive.key | apt-key add -

RUN dpkg --add-architecture armhf
RUN apt-get update
RUN apt-get install -y crossbuild-essential-armhf

RUN apt-get update --allow-unauthenticated
RUN apt-get install -y --allow-unauthenticated	build-essential \
						dpkg-dev \
						debhelper \
						libx11-dev:armhf \
						libxrandr-dev:armhf \
						libxcursor-dev:armhf \
						libxft-dev:armhf \
						libxinerama-dev:armhf \
						libcurl4-openssl-dev:armhf \
						libc6-dev:armhf \
						libfreetype6-dev:armhf


