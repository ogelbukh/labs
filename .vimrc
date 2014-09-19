set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'ctrlp.vim'

call vundle#end()

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set tw=80
set t_Co=128

color vividchalk
color summerfruit256

filetype plugin indent on

autocmd BufRead,BufNewFile Makefile set noexpandtab
autocmd BufRead,BufNewFile {*.md} set filetype=markdown
autocmd BufRead,BufNewFile {*.yaml} set tw=0

nmap <C-N><C-N> :set invnumber<CR>
