set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'codota/tabnine-vim'
Plugin 'ekalinin/dockerfile.vim'

call vundle#end()

filetype plugin indent on




set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

set shiftwidth=2
se nu
nmap <F8> :TagbarToggle<CR>


syntax on
command! W w
command! Wq wq

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

set tags=./tags

autocmd BufEnter,BufNew *.py map <F5> :w<CR>:!python3 %<CR>
autocmd BufEnter,BufNew *.py imap <F5> <ESC>:w<CR>:!python3 %<CR>

au VimLeave * : !clear

" au BufReadPost Dockerfile set syntax=Dockerfile

