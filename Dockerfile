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

WORKDIR /build

COPY compile.sh /build

RUN ./compile.sh