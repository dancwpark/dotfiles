# Configuring work environment

## Oh-My-Zsh
Instructions are on `zshrc`

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

## Set-up script installs?
Scripts should be run from `~/tools/dotfiles/`
