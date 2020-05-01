FROM ubuntu:20.04
LABEL maintainer "LeavaTail <starbow.duster@gmail.com>"

ENV ARCH x86
#ENV ARCH arm
#ENV ARCH arm64

#ENV CROSS_COMPILE arm-linux-gnueabi-
#ENV CROSS_COMPILE aarch64-linux-gnu-

WORKDIR /work
COPY ./setup-${ARCH}.sh /work

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
    && ./setup-${ARCH}.sh \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
