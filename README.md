My config files
---
# zsh
`sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/TinkGu/rc_files/master/scripts/preset/zsh-install.sh)"`

# fonts
* windows

see [this article](http://jack-boy.iteye.com/blog/2154511)

* linux

`sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/TinkGu/rc_files/master/scripts/appearance/fonts-install.sh)"`

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
