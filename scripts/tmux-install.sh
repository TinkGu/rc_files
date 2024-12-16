#!/bin/bash

brew install tmux
curl https://raw.githubusercontent.com/TinkGu/rc_files/master/.tmux.conf > $HOME/.tmux.conf
echo -e "----\ndone!"
