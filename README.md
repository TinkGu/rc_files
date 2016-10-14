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
### Install

`git clone https://github.com/Valloric/YouCompleteMe.git`

`git submodule update --init --recursive`

`sudo apt-get install build-essential cmake`

`sudo apt-get install python-dev python3-dev`

`./install.py --tern-completer --racer-completer`

### Edit vimrc
```
Plugin 'Valloric/YouCompleteMe' " auto complete
```

```
" ============== YouCompleteMe ===========
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
noremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>" "回车即选中当前项
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
" see more
" http://howiefh.github.io/2015/05/22/vim-install-youcompleteme-plugin/
```


# atom
## atom plugins
* activate-power-mode
* line-ending-selector-unix
* atom-beautify
* autocomplete-paths
* file-icons
* [regex-railroad-diagram](https://github.com/klorenz/atom-regex-railroad-diagrams)
* symbols-tree-view
* achievements
* advanced-open-file
* hyperclick
* js-hyperclick
* project-viewer
* local-history
* emmet **delete its keymaps**
* multi-cursor-plus
* [react](https://github.com/orktes/atom-react)
* react-es6-snippets
* git-plus

## disable
* spell check
* language-xxx

## key mapping
`curl https://raw.githubusercontent.com/TinkGu/rc_files/master/atom/keymap.cson > keymap.cson`

## snipptes
`curl https://raw.githubusercontent.com/TinkGu/rc_files/master/atom/snippets.cson > snippets.cson`


# .gitignore
## node
`curl https://raw.githubusercontent.com/TinkGu/rc_files/master/gitignores/node.ignore > .gitignore`
## react
`curl https://raw.githubusercontent.com/TinkGu/rc_files/master/gitignores/react.ignore > .gitignore`
