#!/bin/bash

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
curl https://raw.githubusercontent.com/TinkGu/rc_files/master/.vimrc > $HOME/.vimrc
vim +PluginInstall +qall

# setup theme
mkdir $HOME/.vim/colors
cp $HOME/.vim/bundle/Smyck-Color-Scheme/smyck.vim $HOME/.vim/colors
