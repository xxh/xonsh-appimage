#!/bin/bash

git clone https://github.com/niess/python-appimage
cd python-appimage

echo Build xonsh release
python -m python_appimage build app applications/xonsh
cp xonsh-x86_64.AppImage ../result/

echo Build xonsh 0.9.13
echo -e "xonsh==0.9.13\nprompt_toolkit\nPygments" > applications/xonsh/requirements.txt
python -m python_appimage build app applications/xonsh
cp xonsh-x86_64.AppImage ../result/xonsh-0.9.13-x86_64.AppImage

cd .. && rm -rf python-appimage
