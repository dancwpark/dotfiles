# general
sudo dpkg --add-architecture i368
sudo apt update
sudo apt upprade -y
sudo apt install build-essential \
  clangd \
  gcc \
  git
  nvim \
  tmux \
  xclip \

# node.js (for coc.nvim)
curl -sL install-node.now.sh/lts | sudo bash

# vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
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
