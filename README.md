# kernel-build
A repository contained docker image build linux kernel

## Description
A repository contained docker image for 3 architecture.

* x86
* arm
* arm64

These container shared Host Directory `/srv` with Container `/work`.  
These has already installed package to build linux kernel.

## Usage
1. create docker image
```
$ docker-compose up -d
```
2. login docker container
```
$ docker-compose exec x86 /bin/bash
```
:bulb: You can select `arm` or `arm64` instead of `x86`

## Authors
[LeavaTail](https://github.com/LeavaTail)
