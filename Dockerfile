FROM ubuntu:20.04
LABEL maintainer "LeavaTail <starbow.duster@gmail.com>"

WORKDIR /work

COPY dists/setup.py /usr/local/bin/
ENV DEBIAN_FRONTEND=noninteractive

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
        python3 \
        kmod \
        crossbuild-essential-armhf \
        crossbuild-essential-arm64 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
