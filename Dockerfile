FROM ubuntu:20.04
LABEL maintainer "LeavaTail <starbow.duster@gmail.com>"

WORKDIR /work

RUN set -x && \
    apt-get update && \
    apt-get install -y \
        git \
        bc \
        bison \
        flex \
        libssl-dev \
        make \
        libncurses-dev \
        libelf-dev \
        file \
        wget \
        cpio \
        unzip \
        rsync \
        build-essential \
        gcc-arm-linux-gnueabi \
        gcc-aarch64-linux-gnu \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
