#!/bin/sh
APPS="build-essential \
libc6-dev-i386 \
libffi-dev \
openssh-server"

apt update
apt upgrade -y
apt install $APPS -y
apt clean
apt autoremove -y

