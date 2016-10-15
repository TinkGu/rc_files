#!/bin/bash

# install zsh_theme
if [ ! -e "$HOME/.zsh_theme" ]; then
    curl  https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme > ~/.oh-my-zsh/themes/bullet-train.zsh-theme
    theme_sh="source ~/.zsh_theme"
    sed -i "/^source.*oh-my-zsh\.sh/i${theme_sh}" ~/.zshrc
fi
curl https://raw.githubusercontent.com/TinkGu/rc_files/master/zsh/.zsh_theme > ~/.zsh_theme

# add zsh_profile
if [ ! -e "$HOME/.zsh_profile" ]; then
    echo 'source ~/.zsh_profile' >> ~/.zshrc
fi
curl https://raw.githubusercontent.com/TinkGu/rc_files/master/zsh/.zsh_profile > ~/.zsh_profile

source ~/.zshrc
---
echo 'done!'
