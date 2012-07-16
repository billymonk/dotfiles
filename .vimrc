let mapleader = ","

nnoremap e ea
nnoremap <C-w>v <C-w>v<C-w>l
" Improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk
" Keep search pattern at the centre of the screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
" Select last pasted text
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'

set background=dark
set expandtab
set ts=2
set sw=2
set hlsearch
set nu
set ignorecase
set smartcase
set gdefault
set completeopt=longest,menuone
set autoindent

if has("autocmd")
 " When editing a file, always jump to the last cursor position
 autocmd BufReadPost *
 \ if line("'\"") > 0 && line ("'\"") <= line("$") |
 \   exe "normal g'\"" |
 \ endif

  autocmd BufWritePre * :%s/\s\+$//e
endif

runtime macros/matchit.vim

" Plugins
call pathogen#infect()

" slim-vim
syntax enable
filetype plugin indent on

" syntastic
let g:syntastic_javascript_jslint_args = "--predef 'google' --predef 'waitsFor' --predef 'runs' --predef 'jasmine' --predef '$' --predef 'afterEach' --predef 'beforeEach' --predef 'clearAjaxRequests' --predef 'confirm' --predef 'describe' --predef 'expect' --predef 'it' --predef 'loadFixtures' --predef 'mostRecentAjaxRequest' --predef 'spyOn' --predef 'JST' --predef 'ZAPI' --predef '$Z' --predef '_' --predef 'jQuery' --predef 'APP' --predef 'History' --predef 'Foundation' --predef 'matchMedia' --browser true --unparam --nomen --white --node false --devel --regexp true"
