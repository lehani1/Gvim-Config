set autoindent
colorscheme everforest 
set laststatus=2
syntax on
call plug#begin('~/vimfiles/plugged')
Plug 'itchyny/lightline.vim'
call plug#end()
set tabstop=4
set number
if has("gui_running")
  set guifont=Consolas:h13
endif
set clipboard=unnamed
set backspace=2
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR>
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $

nnoremap cpf i#include<iostream><Esc>ousing namespace std;<Esc>o<CR>int main(){<Esc>o<Esc>oreturn 0;<Esc>o}<Esc>kki
