# general
sudo apt update
sudo apt upprade -y
sudo apt install neovim \

# node.js (for coc.nvim)
curl -sL install-node.now.sh/lts | sudo bash

# vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +'PlugInstall | PlugUpdate | PlugUpgrade | q | q'

# coc.nvim extensions
nvim +'CocInstall coc-json | qall'
nvim +'CocInstall coc-clangd | qall'
nvim +'CocInstall coc-css | qall'
nvim +'CocInstall coc-git | qall'
nvim +'CocInstall coc-html | qall'
nvim +'CocInstall coc-java | qall'
nvim +'CocInstall coc-jedi | qall'

# jedi (for coc-jedi)
python3 -m pip install jedi-language-server
