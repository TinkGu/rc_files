# vim


# YouCompleteMe
## Install

`git clone https://github.com/Valloric/YouCompleteMe.git`

`git submodule update --init --recursive`

`sudo apt-get install build-essential cmake`

`sudo apt-get install python-dev python3-dev`

`./install.py --tern-completer --racer-completer`

## Edit vimrc
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
