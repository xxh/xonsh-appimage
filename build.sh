#!/bin/bash

docker build . -t xonssh/xonsh-appimage
docker run --rm -v -it --privileged --device /dev/fuse -v `pwd`/result:/result xonssh/xonsh-appimage
