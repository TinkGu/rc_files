# install
## conf vim
`curl https://raw.githubusercontent.com/TinkGu/rc_files/master/.vimrc > ~/.vimrc`

## conf tmux
`curl https://raw.githubusercontent.com/TinkGu/rc_files/master/.tmux.conf > ~/.tmux.conf`

# fonts
`git clone https://github.com/powerline/fonts.git`

`./install.sh`

# zsh
`curl  https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme > ~/.oh-my-zsh/themes/bullet-train.zsh-theme`

`vim ~/.zshrc`
```
ZSH_THEME="bullet-train"
BULLETTRAIN_PROMPT_ORDER=(
  time
  git
  context
  dir
)
```

# tmux
`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

`vim ~/.tmux.conf`
```
# List of plugins
set -g @tpm_plugins '                \
    tmux-plugins/tpm                 \
    tmux-plugins/tmux-sensible       \
    tmux-plugins/tmux-resurrect      \
    tmux-plugins/tmux-continuum      \
    tmux-plugins/tmux-yank           \
    tmux-plugins/tmux-pain-control   \
    tmux-plugins/tmux-copycat        \
    tmux-plugins/tmux-open           \
    tmux-plugins/tmux-battery        \
    tmux-plugins/tmux-cpu            \
'

# Initialize TMUX plugin manager
run '~/.tmux/plugins/tpm/tpm'
```

`tmux start-server`

`tmux new-session -d`

`~/.tmux/plugins/tpm/scripts/install_plugins.sh`

`tmux kill-server`

# .vimrc
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

## colors
`mkdir ~/.vim/colors`
`cp ~/.vim/bundle/Smyck-Color-Scheme ~/.vim/colors`

## YouCompleteMe
自动补全
`git clone https://github.com/Valloric/YouCompleteMe.git`
`git submodule update --init --recursive`

`sudo apt-get install build-essential cmake`
`sudo apt-get install python-dev python3-dev`

`./install.py --tern-completer --racer-completer`

## 记忆上次退出前编辑位置
`sudo chown -R {username} {filename}`

