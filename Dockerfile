FROM debian:stable-slim

RUN apt-get -y update && apt-get install -y \
    git \
    wget \
    pkg-config \
    autoconf \
    automake \
    cmake \
    re2c \
    make \
    bzip2 \
    bison \
    g++ \
    libtool-bin

RUN git clone https://github.com/pmmp/php-build-scripts.git

WORKDIR /php-build-scripts

RUN git checkout php/7.4

RUN ./compile.sh