# Vim things I need to remember

## Movement
* `L`  : end of screen
* `M`  : middle of screen
* `)`  : forward by one "sentence"
* `(`  : backward by one "sentence"
* `%`  : jump to corresponding item, e.g, matching brace
* `'.` : goto last changed line
* `''` : Return to line where cursor was before jump
* ```` : Return cursor position before the lastest jump
* g;   : Jump to the place of last edit (longer history than `'.`)


## Search and Replace
* `:s/<search_term>/<replace_term>/option`
  * options:
    * c: confirmation
    * g: replace all occurences in one line
    * i: ignore the case
* To only look at slice of lines
  * `<start_line>, <end_line>s/<search_term>/<replace_term>/g`
* To look for ALL occurences
  * `%s/<search_term>/<replace_term>/option`
