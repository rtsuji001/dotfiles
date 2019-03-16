if &compatible
  set nocompatible               " Be iMproved
endif

augroup MyAutoCmd
  autocmd!
augroup END

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if &runtimepath !~# '/dein.vim'
  " Auto Download
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let g:rc_dir = expand("~/.config/nvim")
  let s:toml = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

set cursorline
hi CursorLine guifg=#E19972
set fileencodings=ucs-bom,utf-8,sjis,utf-16le,utf-16,default
set fileformats=unix,dos,mac
let $LANG='ja_JP.UTF-8'
set cmdheight=2
set number
set hidden
set tabstop=2
set shiftwidth=2
set softtabstop=0
set expandtab
set smartindent
set shiftround
set showmatch
" カーソルの左右移動で行末から次の行の行頭への移動が可能になる
set whichwrap=b,s,h,l,<,>,[,],~
set list
set listchars=trail:-,eol:↲
set ignorecase
"set incsearch
set mouse=a
set splitbelow
set splitright
set spelllang=en,cjk
set clipboard=unnamed

let g:python_host_prog = '/home/rtsuji005/.config/nvim/neovim2/bin/python2'
let g:python3_host_prog = '/home/rtsuji005/.config/nvim/neovim3/bin/python3'

nnoremap <silent> <C-l> :<C-u>setlocal spell! spelllang=en_us<CR>:setlocal spell?<CR>

