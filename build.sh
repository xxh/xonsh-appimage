#!/bin/bash

git clone https://github.com/xxh/python-appimage
cd python-appimage

echo Build xonsh release
python -m python_appimage build app applications/xonsh
cp xonsh-x86_64.AppImage ../result/
cp xonsh-x86_64.AppImage ../result/xonsh-release-x86_64.AppImage

echo Build xonsh master
echo -e "git+https://github.com/xonsh/xonsh.git\nprompt_toolkit\nPygments" > applications/xonsh/requirements.txt
python -m python_appimage build app applications/xonsh
cp xonsh-x86_64.AppImage ../result/xonsh-master-x86_64.AppImage

echo Build xonsh 0.9.13
echo -e "xonsh==0.9.13\nprompt_toolkit\nPygments" > applications/xonsh/requirements.txt
python -m python_appimage build app applications/xonsh
cp xonsh-x86_64.AppImage ../result/xonsh-0.9.13-x86_64.AppImage

cd .. && rm -rf python-appimage

