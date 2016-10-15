#!/bin/bash

# install zsh
apt-get update
apt-get install zsh
echo 'zsh' >> ~/.bashrc

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install zsh_theme
curl https://raw.githubusercontent.com/TinkGu/rc_files/master/zsh/.zsh_theme > ~/.zsh_theme
theme_sh="source ~/.zsh_theme"
sed -i "/^source.*oh-my-zsh\.sh/i${theme_sh}" ~/.zshrc

# add zsh_profile
curl https://raw.githubusercontent.com/TinkGu/rc_files/master/zsh/.zsh_profile > ~/.zsh_profile
echo 'source ~/.zsh_profile' >> ~/.zshrc

zsh
echo "welcome zsh"
