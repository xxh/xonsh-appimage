#!/bin/bash

git clone https://github.com/niess/python-appimage
cd python-appimage
python -m python_appimage build app applications/xonsh
cp xonsh-x86_64.AppImage ../result/
cd .. && rm -rf python-appimage
