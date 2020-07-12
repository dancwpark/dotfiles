# pwndbg
## git clone https://github.com/pwndbg/pwndbg
## cd pwndbg
## ./setup.sh

#_____gdb options_____
## Intel Assembly Language
set disassembly-flavor intel
## Set to 1 to show stack (default is 0)
set $SHOWSTACK=0

set detach-on-fork off
set follow-fork-mode child
