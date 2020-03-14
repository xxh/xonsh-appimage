#!/bin/bash

docker build . -t xxh/xonsh-appimage
docker run --rm -v -it --privileged --device /dev/fuse -v `pwd`/result:/result xxh/xonsh-appimage
