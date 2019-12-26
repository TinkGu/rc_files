#!/bin/bash

# install zsh
brew install zsh
echo 'zsh' >> ~/.bashrc

# TODO: git clone this repo and init symlink

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install zsh_theme
curl https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme > ~/.oh-my-zsh/themes/bullet-train.zsh-theme

echo -e '---\ndone!'
