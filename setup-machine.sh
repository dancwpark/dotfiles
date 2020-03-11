#!/bin/sh
APPS="build-essential \
docker.io \
fish \
gcc \
git \
libc6-dev-i386 \
libffi-dev
neovim \
python \
python-pip \
python3 \
python3-dev
python3-pip \
tmux \
virtualenvwrapper"
apt update
apt upgrade -y
apt install $APPS -y
apt clean
apt autoremove -y

# fish --> chsh -s /usr/bin/fish

# ALIASES
ALIASES="alias vi='nvim'
alias vim='nvim'"
echo "$ALIASES" > ~/.bash_aliases
