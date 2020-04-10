# Configuring work environment

## Fish
### virtualfish
To get fish to work with virtualenv, you need to do the following
* Install `virtualfish`
  * `pip3 install virtualfish`
  * Use the `config.fish` in this repo
  * Add virtualfish to prompt
    * Edit file `/usr/share/fish/functions/fish_prompt.fish`
```
if set -q VIRTUAL_ENV
    echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
end
```
Add the above to somewhere in the `fish_prompt` function.

## Neovim
After installation, `vim-plug` needs to be installed.
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Afterwards, need to install, update, and clean
* Install: `:PlugInstall`
* Update: `:PlugUpdate`
* Remove: `:PlugClean` after commenting out plugins in `init.vim`

Also can check plugin status and update `vim-plug` with `:PlugStatus` and
`:PlugUpgrade`.

# Set-up script installs?
* build-essential
* docker.io
* fish
* gcc
* git
* libc6-dev-i386
* libffi-dev
* neovim
* python
* python-pip
* python3
* python3-dev
* python3-pip
* tmux
* virtualenvwrapper
