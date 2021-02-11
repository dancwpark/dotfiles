#!/bin/sh
APPS="build-essential \
clangd \
gcc \
git \
libc6-dev-i386 \
libffi-dev \
neovim \
openssh-server \
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

# node.js (for coc.nvim)
curl -sL install-node.now.sh/lts | sudo bash

# vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp -r nvim/ ~/.config/nvim/
vim +'PlugInstall | PlugUpdate | PlugUpgrade | q | q'

# coc.nvim extensions
vim +'CocInstall coc-json | qall'
vim +'CocInstall coc-clangd | qall'
vim +'CocInstall coc-css | qall'
vim +'CocInstall coc-git | qall'
vim +'CocInstall coc-html | qall'
vim +'CocInstall coc-java | qall'
vim +'CocInstall coc-jedi | qall'

# jedi (for coc-jedi)
python3 -m pip install jedi-language-server

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
python3 -m venv ~/venv/angr
echo "Remember to activate and install angr\nNot sure how to do that automatically yet!"

