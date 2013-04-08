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

filetype plugin indent on
