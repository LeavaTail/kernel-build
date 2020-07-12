#!/bin/bash

set -x

docker build -t kbuild .
docker run -d --rm --name=kbuild -v ${PWD}/tests:/work -it kbuild /bin/bash
