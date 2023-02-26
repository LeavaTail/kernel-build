FROM ubuntu:22.04
LABEL maintainer "LeavaTail <starbow.duster@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ Asia/Tokyo

RUN set -x && \
    apt-get update && \
    apt-get install -y \
        sudo \
        tzdata \
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
