# Useful Commands
* There mouse mode just in case I forget anything.

## NERDTree
* Open/Close NERDTree
  * `ctrl+n`
* File manipulation
  * `m`    : in NERDTree
    * `a`  : new file or directory
* Open file
  * `enter`: open file
  * `i`    : open file in vertical split
  * `s`    : open file in horizontal split

## VIM
* Open new file without NERDTree
  * `:tabf $file`: open file in new tab
* Tab navication
  * `gt`         : next tab
    * `tabn`     : alternative
  * `gT`         : previous tab
    * `tabp`     : alternative
  * `#gt`        : move to tab #
* Pane management
  * `w[h|j|k|l]` : change to [direction] pane
* File movement
  * `L`:  end of screen
  * `M`:  middle of screen
  * `)`:  forward by 1 sentence
  * `(`:  backward by1 sentence
  * `%`:  jump to corresponding item, eg matching brace
  * `'.`: goto last changed line
  * `''`: return cursor to line before recent jump
  * `g;`: jump to place of last edit
  * `gg`: beginning of file
  * `G` : end of file
  * `$` : end of line
  * `0` : beginning of line
  * `^` : first word of line
* Fast editing
  * `ctrl+v; I`: insert something to highlighted lines
  * `ctrl+v; A`: append something to highlighted lines
  * `ctrl+v; d`: delete highlighted portion
  * `ctrl+v; D`: for highlighted lines, delete from highlighted to end of line
* Search and Replace
  * `/$search`: search for $search
  * `:noh`: remove highlighting from search
  * `:s/$search/$replace/$option`: search for $search and replace with #replace
    * $options
    * `c`: ask for confirmation
    * `g`: replace all occurences in one line
    * `i`: ignore the case
  * To only look at certain lines
    * `<startline>, <endline>s/$search/$replace/g`
  * To look for all occurences
    * `%s/$search/$replace/g[$option]`
  * Delete all lines with certain pattern
    * `:g/$pattern/d`

## TMUX 
Really only used for having detachable session.
* To open tmux
  * `tmux ls`        : list all tmux sessions
  * `tmux -a t $name`: connect to sessions named $name
  * `tmux a`         : connect to session
* Inside tmux
  * `ctrl+b; $`      : rename current session


