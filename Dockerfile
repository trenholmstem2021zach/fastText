# Get C++ Compiler Image
FROM ubuntu

MAINTAINER Zach Lewis <trenholm.stem2021.zach@gmail.com>

RUN apt-get update
RUN yes | apt install build-essential
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN chmod +x ./build.sh
CMD ./build.sh
