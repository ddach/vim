set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tmhedberg/SimpylFold'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Bundle 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"remap leader to <space>
let mapleader=" "

"settings for you complete me
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"syntax, colorscheme
let python_highlight_all=1
syntax enable
colorscheme badwolf

" tab settings
set tabstop=4
set softtabstop=4
set expandtab

"show numbering
set number

"mapping for split screen jumps
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"mapping for executing python
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
