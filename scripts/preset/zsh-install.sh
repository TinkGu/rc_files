#!/bin/bash

# install zsh 【可跳过，因为一般 iterm2 会预装】
# brew install zsh
# echo 'zsh' >> ~/.bashrc

# TODO: git clone this repo and init symlink

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install zsh_theme
# curl https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme > ~/.oh-my-zsh/themes/bullet-train.zsh-theme

echo -e '---\ndone!'
