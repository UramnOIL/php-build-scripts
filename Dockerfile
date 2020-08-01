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

WORKDIR /workspace

COPY compile.sh /workspace

WORKDIR /build

CMD /workspace/compile.sh