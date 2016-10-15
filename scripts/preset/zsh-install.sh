#!/bin/bash

# install zsh
apt-get update
apt-get install zsh
echo 'zsh' >> ~/.bashrc

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
