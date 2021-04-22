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

# pwntools
python3 -m pip install pwntools

# gdb -- pwndbg
python3 -m pip install keystone-engine \
  unicorn \
  capstone \
  ropper \
  virtualenv
echo "set diassembly-flavor intel\nset $SHOWSTACK=0\nset detach-on-fork off\nset follow-fork-mode child" >> ~/.gdbinit
git clone https://github.com/pwndbg/pwndbg ~/tools/ && ../pwndbg/setup.sh


# Virtual environments (mostly for angr)
mkdir ~/venv
python3 -m venv ~/venv/angr && \
  source ~/venv/example/bin/activate && \
  python3 -m pip install angr && \
  deactivate
