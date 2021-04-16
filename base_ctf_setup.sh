#!/bin/sh
APPS="build-essential \
clangd \
gcc \
git \
libc6-dev-i386 \
libffi-dev \
python3-venv \
tmux \
xclip" 

dpkg --add-architecture i368
apt update
apt upgrade -y
apt install $APPS -y
apt clean
apt autoremove -y

# tmux config
cp tmux.conf ~/.tmux.conf

# gdb
python3 -m pip install keystone-engine \
  unicorn \
  capstone \
  ropper \
  virtualenv
wget -O ~/.gdbinit-gef.py -q http://gef.blah.cat/py
echo source ~/.gdbinit-gef.py >> ~/.gdbinit
echo "set diassembly-flavor intel\nset $SHOWSTACK=0\nset detach-on-fork off\nset follow-fork-mode child" >> ~/.gdbinit

# Virtual environments
mkdir ~/venv
python3 -m venv ~/venv/angr && \
  source ~/venv/example/bin/activate && \
  python3 -m pip install angr && \
  deactivate
