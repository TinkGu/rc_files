#!/bin/bash

# install zsh
brew install zsh
echo 'zsh' >> ~/.bashrc

if [ ! -e "$HOME/.zsh" ]; then
    mkdir ".zsh"
fi

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

curl https://raw.githubusercontent.com/TinkGu/rc_files/master/zsh/.zshrc > ~/.zshrc

# install zsh profile
curl https://raw.githubusercontent.com/TinkGu/rc_files/master/zsh/.zsh_profile > ~/.zsh/.zsh_profile

# install zsh_theme
curl https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme > ~/.oh-my-zsh/themes/bullet-train.zsh-theme
curl https://raw.githubusercontent.com/TinkGu/rc_files/master/zsh/.zsh_theme > ~/.zsh/.zsh_theme

# install shell utils
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
curl https://raw.githubusercontent.com/TinkGu/rc_files/master/zsh/m.sh > ~/.zsh/m.sh
curl https://raw.githubusercontent.com/TinkGu/rc_files/master/zsh/ccat.sh > ~/.zsh/ccat.sh

echo -e '---\ndone!'
