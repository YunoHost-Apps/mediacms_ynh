#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================
install_ffmpeg () {
# install ffmpeg
echo "Downloading and installing ffmpeg"
wget -q https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
mkdir -p tmp
tar -xf ffmpeg-release-amd64-static.tar.xz --strip-components 1 -C tmp
cp -v tmp/{ffmpeg,ffprobe,qt-faststart} /usr/local/bin
rm -rf tmp ffmpeg-release-amd64-static.tar.xz
echo "ffmpeg installed to /usr/local/bin"
}

install_hls () {
# Bento4 utility installation, for HLS
wget http://zebulon.bok.net/Bento4/binaries/Bento4-SDK-1-6-0-637.x86_64-unknown-linux.zip
unzip Bento4-SDK-1-6-0-637.x86_64-unknown-linux.zip
mkdir /home/mediacms.io/mediacms/media_files/hls
rm Bento4-SDK-1-6-0-637.x86_64-unknown-linux.zip
}
