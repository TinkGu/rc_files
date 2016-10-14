My config files
---
# zsh
## install
* ubuntu
```
apt-get install zsh
```

## zsh alias and other settings
```
curl https://raw.githubusercontent.com/TinkGu/rc_files/master/.zsh_profile > ~/.zsh_profile
```

## oh-my-zsh
### install
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### fonts
`git clone https://github.com/powerline/fonts.git`

`./install.sh`

## zsh-theme
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
## install
* ubuntu
```
apt-get install tmux
```

## config
`curl https://raw.githubusercontent.com/TinkGu/rc_files/master/.tmux.conf > ~/.tmux.conf`

## tpm(optional)
see [tmux.md#tpm](https://github.com/TinkGu/rc_files/blob/master/tmux.md#tpm)

# vim
`curl https://raw.githubusercontent.com/TinkGu/rc_files/master/.vimrc > ~/.vimrc`

## vundle
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

`vim {anything}`
```
:PluginInstall
```

## colors
`mkdir ~/.vim/colors`

`cp ~/.vim/bundle/Smyck-Color-Scheme/smyck.vim ~/.vim/colors`

## YouCompleteMe(optional)
see [vim.md#YouCompleteMe](https://github.com/TinkGu/rc_files/blob/master/vim.md#youcompleteme)


# atom
## Plugins
see [atom.md#plugins](https://github.com/TinkGu/rc_files/tree/master/atom#plugins)

## key mapping
`curl https://raw.githubusercontent.com/TinkGu/rc_files/master/atom/keymap.cson > keymap.cson`

## snipptes
`curl https://raw.githubusercontent.com/TinkGu/rc_files/master/atom/snippets.cson > snippets.cson`

# git
`git config --global core.editor vim`
