# Notes on using Vim+TMUX workflow
This document contains all the common vim+tmux commands I use for my day to day work. I may expand this document later to include other programs that I consistently use, such as GDB.
* install xclip
    * this allows copy into sytem clipboard using `y` intead of `enter`
## Vim Cheatsheet
* undo => u
* redo => CTRL+r
* visual block => v
    * movement works the same
    * V => highline whole line
* cut => 
    * visual block + highlight + d => cut block
    * dd => cut whole line
    * D => cut everything in line before cursor
* y => copy
* paste =>
    * p => paste under
    * P => paste above
### Navigation - lines
* to line `x` => :`x`
* line up => k
* line down => j
* character left => h
* character right => l
* end of line => $
* start of line => 0
* first non-blank character => ^
* last non-blank character => g\_
### Navigation - screen
* first line on screen => H
* middle line on screen => M
* last line on screen => L
* page down => CTRL+f
* page up => CTRL+b
* half page down => CTRL+d
* half page up => CTRL+u
* beginning => gg
* end => G
### Navigation - word
* end of word => e
* end of WORD => E
* start of previous word => b
* start of previous WORD => B
* next word => w
* next WORD => W
### Navigation - paragraph
* beginning of paragraph => {
* end of paragraph => }
### Search
* search for `word` => /`word`
* next word => n
### Code
* go to matching brace/parentheses => %
## TMUX Cheatsheet
### Open + Close
* open session => tmux
* open and connect to last session => tmux a
* list all live sessions => tmux ls
* rename tmux session => CTRL+b $
* attach to session `name` => tmux a -t `name`
### Workspace
* vertical split => CTRL+b %
* horizontal split => CTRL+b "
* resize window => CTRL+b `arrow key`
### Editing
* copy => 
    * CTRL+b [ --> Enters navigation mode
    * SPACE    --> Start copying block
    * Enter    --> Copy
    * v        --> use to copy block (no line numbers)
* paste => CTRL+b ]

