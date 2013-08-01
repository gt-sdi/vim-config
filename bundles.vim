set nocompatible
filetype off

set rtp+=~/Documents/configs/vim-config/bundle/vundle/
call vundle#rc()

Bundle 'git://github.com/gmarik/vundle'
Bundle 'vim-ruby/vim-ruby'
Bundle 'git://github.com/tpope/vim-rails'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'git://github.com/kchmck/vim-coffee-script.git'
Bundle 'git@github.com:altercation/vim-colors-solarized.git'
Bundle 'git://github.com/tpope/vim-commentary.git'
Bundle 'git://github.com/SirVer/ultisnips'
Bundle 'vim-scripts/cheat'
Bundle 'tpope/vim-ragtag'
Bundle 'nelstrom/vim-markdown-preview'
Bundle 'slim-template/vim-slim'
Bundle 'scrooloose/nerdtree'
Bundle 'godlygeek/tabular'
Bundle 'git://github.com/vim-scripts/EasyGrep.git'
Bundle 'git://github.com/mileszs/ack.vim.git'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

filetype plugin indent on
