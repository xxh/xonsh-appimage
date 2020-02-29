FROM ubuntu:16.04
RUN apt update -y && apt upgrade -y

RUN apt install -y fuse wget mc git \
	build-essential python-dev python-setuptools python-pip python-smbus \
	libncursesw5-dev lib32ncurses5-dev libgdbm-dev libc6-dev  \
	zlib1g-dev libsqlite3-dev tk-dev \
	libssl-dev openssl \
	libffi-dev autoconf libfuse-dev

RUN apt install --no-install-recommends -y -qq                                 \
        build-essential libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev \
        libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev     \
        libexpat1-dev liblzma-dev libffi-dev tk-dev automake libfuse2  \
		libbz2-dev liblzma-dev

RUN mkdir -p /appimage
WORKDIR /appimage
RUN wget https://github.com/niess/linuxdeploy-plugin-python/archive/master.zip -O linuxdeploy-plugin-python.zip
RUN unzip linuxdeploy-plugin-python.zip
WORKDIR linuxdeploy-plugin-python-master/appimage
CMD ./build-python.sh xonsh && ls -1 *.AppImage && mkdir -p /result && cp ./*.AppImage /result