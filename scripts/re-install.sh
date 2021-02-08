#!/bin/bash

# Python packages
python3 -m pip install keystone-engine \
  unicorn \
  capstone \
  ropper \
  virtualenv

# gdb
wget -O ~/.gdbinit-gef.py -q http://gef.blah.cat/py
echo source ~/.gdbinit-gef.py >> ~/.gdbinit
echo "set diassembly-flavor intel\nset $SHOWSTACK=0\nset detach-on-fork off\nset follow-fork-mode child" >> ~/.gdbinit

# Virtual environments
mkdir ~/venv
python3 -m venv ~/venv/angr
echo "Remember to activate and install angr\nNot sure how to do that automatically yet!"

