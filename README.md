# kernel-build

A repository contained docker image build linux kernel

## Table of Contents

- [Description](#Description)
- [Requirements](#Requirements)
- [Prerequisite](Prerequisite)
- [Usage](#Usage)
- [Authors](#Authors)

## Description

A repository contained docker image for 3 architecture.

- x86
- arm
- arm64

This docker images shared home directory (current process) with host environment.<br>
In other word, **these container has same user account and home directory.**

The configuration below files are shared.

- /etc/passwd
- /etc/group
- /etc/sudoers
- /etc/shadow

These has already installed package to build linux kernel.

## Requirements

The following operating systems have been confirmed.

- Ubuntu 20.04

## Prerequisite

Please see official site

- [Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu)
- [Install Docker Compose](https://docs.docker.com/compose/install)

## Usage

**Create and start-up**

```sh
$ env UID=${UID} GID=${GID} docker-compose up -d
```

**Enter Container**

```sh
$ docker-compose exec x86 /bin/bash
```

:bulb: You can select `arm` or `arm64` instead of `x86`

**Update Docker image**

```sh
$ docker-compose up -d --build
```

## Authors

[LeavaTail](https://github.com/LeavaTail)
