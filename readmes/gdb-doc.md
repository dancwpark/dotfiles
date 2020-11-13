# GDB Stuff
* Install GEF
  * `wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | sh `
  * if it doesn't work, move current `.gdbinit` and add contents to newly created one.
* Install Pwndbg
  * ???

## Normal GDB
### Loading a file
* Can call with `gdb`: `gdb filename`
* Load in `gdb`: `file filename`
### Run binary
`r`un the binary
* Arguments
  * `r < <(python -c "print('argument')")
    * can use echo or whatever else
### List functions
`info functions`

### Disassemble function
`disass <function`

### Breakpoints
`entry-break`
* Attempts to find best entry point and sets temporary breakpoint.
`b *function+<offset>`

`b *0x<addr>`

If you have debugging symbols, you can just specify line number:
`b 5`
  * set a breakpoint at line 5 of the `C` file

### Navigation
`c`ontinue
  * continue onto the next breakpoint or the end of the file
`si`
  * step into the function or continue
`ni`
  * next instruction (skips over function calls)

### Inspection
`print $register`

`x/<number><options> $register/<addr>`
  * hex dump of <number> bytes beginning at the register or addr
  * <options>
    * `bx`: one byte in hex
    * `wx`: one 4 byte word in hex
    * `gx`: one 8 byte word in hex


## GDB Scripting
(todo)


## Pwntools
(todo)
