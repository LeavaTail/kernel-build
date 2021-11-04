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

These container shared Host Directory `/srv` with Container `/work`.  
These has already installed package to build linux kernel.

## Requirements

The following operating systems have been confirmed.

- Ubuntu 20.04

## Prerequisite

Please see official site

- [Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu)
- [Install Docker Compose](https://docs.docker.com/compose/install)

## Usage

1. create docker image
```sh
$ docker-compose up -d
```
2. login docker container
```sh
$ docker-compose exec x86 /bin/bash
```

:bulb: You can select `arm` or `arm64` instead of `x86`

## Authors

[LeavaTail](https://github.com/LeavaTail)
