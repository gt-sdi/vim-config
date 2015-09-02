set shell=/bin/bash

"r_dump($stor bundles/plugins file to install from
source ~/dotfiles/vim/bundles.vim

set guifont=Anonymous\ Pro:h13

" set the <leader> placeholder to be ,
let mapleader = ","
" localleader can be used for specific files
let maplocalleader = ",,"

" set jj in insert mode to be esc (far faster than reaching all the way to esc)
inoremap jj <esc>

" remove the arrow keys in normal mode, use hjkl instead
nnoremap <silent> <Up> :wincmd k<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <silent> <Down> :wincmd j<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <silent> <Left> :wincmd h<CR>
nnoremap <C-h> :wincmd h<CR>
nnoremap <silent> <Right> :wincmd l<CR>
nnoremap <C-l> :wincmd l<CR>

" Add a split line command
nnoremap K i<CR><Esc>

filetype on  " Automatically detect file types.
set nocompatible  " We don't want vi compatibility.
set laststatus=2   " Always show the statusline

" Add recently accessed projects menu (project plugin)
set viminfo^=!


" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

syntax enable

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
" set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

" Force 256 colours in term
set t_Co=256
" colorscheme hybrid

" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 4 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab
set wildmenu
set incsearch
set ignorecase
set smartcase
set infercase

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.

set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.

" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

" Backups & Files
set backup                     " Enable creation of backup file.
set backupdir=~/dotfiles/vim/backups " Where backups will go.
set directory=~/dotfiles/vim/tmp     " Where temporary files will go.

"folding - which I don't really use so turned off
set nofoldenable

"============= bindings ===============

"Map toggle relative/absolute line numbering
nnoremap <C-N> :set invrnu<cr>

" start with relative line numbers
set number
set relativenumber

" some tab maps
noremap tl :tabnext<CR>
noremap th :tabprev<CR>
noremap tn :tabnew<CR>
noremap td :tabclose<CR>

" double percentage sign in command mode is expanded
" " to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>


" open your vimrc file in a new split
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
" reload your vimrc in the current buffer
nnoremap <leader>sv :source $MYVIMRC<CR>:echom 'Resourced vimrc file'<CR>

"Dash integration
:nmap <silent> <leader>d <Plug>DashSearch

" paste mode
nnoremap <leader>pm :set invpaste<CR>

" control-u will now uppercase the word you are typing while in insertmode
inoremap <c-u> <esc>viwUA<CR>
" control-u will uppercase the word the cursor is on when in normal-mode
nnoremap <c-u> viwU

set enc=utf-8
set termencoding=utf-8
set fileencoding=utf-8

" keep the visual selection active after indenting.
vmap > >gv
vmap < <gv

" autocommands

" fix html indenting a little
autocmd FileType html setlocal indentkeys-=*<Return>

au BufNewFile,BufReadPost *.coffee set filetype=coffee
augroup filetype_coffee
  setl shiftwidth=2 expandtab
  setl foldmethod=indent
augroup END

let g:ragtag_global_maps = 1

" nnoremap <leader>nt :NERDTree<CR>

"""""""" NERDTree: 
" much of this is from http://github.com/spicycode/Vimlander-2-The-Quickening
map <Leader>nt :NERDTreeToggle<CR>
" Enable nice colors
let NERDChristmasTree = 1
" Make it easy to see where we are
let NERDTreeHighlightCursorline = 1
" Make bookmarks visible
let NERDTreeShowBookmarks = 1
" Show hidden files
let NERDTreeShowHidden = 1
" Don't hijack NETRW
"let NERDTreeHijackNetrw = 0
let NERDTreeHijackNetrw = 1
let NERDTreeIgnore=['\.$', '\~$']

function! DoPrettyXML()
  " save the filetype so we can restore it later
  let l:origft = &ft
  set ft=
  " delete the xml header if it exists. This will
  " permit us to surround the document with fake tags
  " without creating invalid xml.
  1s/<?xml .*?>//e
  " insert fake tags around the entire document.
  " This will permit us to pretty-format excerpts of
  " XML that may contain multiple top-level elements.
  0put ='<PrettyXML>'
  $put ='</PrettyXML>'
  silent %!xmllint --format -
  " xmllint will insert an <?xml?> header. it's easy enough to delete
  " if you don't want it.
  " delete the fake tags
  2d
  $d
  " restore the 'normal' indentation, which is one extra level
  " too deep due to the extra tags we wrapped around the document.
  silent %<
  " back to home
  1
  " restore the filetype
  exe "set ft=" . l:origft
endfunction
command! PrettyXML call DoPrettyXML()

