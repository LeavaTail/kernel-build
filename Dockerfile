FROM ubuntu:22.04
LABEL maintainer "LeavaTail <starbow.duster@gmail.com>"

ARG USER_ID="1000"
ARG GROUP_ID="1000"
ARG USER_NAME="user"

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

RUN groupadd -g "${GROUP_ID}" "${USER_NAME}" && \
    useradd -l -u "${USER_ID}" -m "${USER_NAME}" -g "${USER_NAME}"

USER ${USER_NAME}
CMD ["/bin/bash"]
