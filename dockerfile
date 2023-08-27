FROM ubuntu:22.04

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install git nano zip unzip p7zip-full tmux screen

RUN apt-get -y install openjdk-8-jdk
