set nocompatible
filetype off

set rtp+=~/Documents/configs/vim-config/bundle/vundle/
call vundle#rc()

Bundle 'git://github.com/gmarik/vundle'
Bundle 'vim-ruby/vim-ruby'
Bundle 'git://github.com/tpope/vim-rails'
Bundle 'kien/ctrlp.vim'
" Bundle 'git://github.com/Lokaltog/vim-powerline'
" Bundle 'git://github.com/pangloss/vim-javascript.git'
" Bundle 'git://github.com/scrooloose/syntastic.git'
" Bundle 'git://github.com/Valloric/YouCompleteMe.git'
" Bundle 'git://github.com/kchmck/vim-coffee-script.git'
Bundle 'git@github.com:altercation/vim-colors-solarized.git'
Bundle 'git://github.com/tpope/vim-commentary.git'
Bundle 'git://github.com/SirVer/ultisnips'

filetype plugin indent on
