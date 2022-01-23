# Get C++ Compiler Image
FROM ubuntu

MAINTAINER Zach Lewis <trenholm.stem2021.zach@gmail.com>

RUN apt-get update
RUN yes | apt install git
RUN yes | apt install build-essential
RUN git clone https://github.com/trenholmstem2021zach/fastText
#COPY /fastText /usr/src/myapp
WORKDIR /usr/src/myapp
RUN ln -s /fastText
CMD ls
