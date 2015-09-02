set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'vim-ruby/vim-ruby'
Plugin 'git://github.com/tpope/vim-rails'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'git://github.com/kchmck/vim-coffee-script.git'
Plugin 'git@github.com:altercation/vim-colors-solarized.git'
Plugin 'git://github.com/tpope/vim-commentary.git'
Plugin 'vim-scripts/cheat'
Plugin 'tpope/vim-ragtag'
Plugin 'nelstrom/vim-markdown-preview'
Plugin 'slim-template/vim-slim'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'git://github.com/mileszs/ack.vim.git'
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'
" Plugin 'hallison/vim-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'vim-scripts/vimwiki'

call vundle#end()
filetype plugin indent on
