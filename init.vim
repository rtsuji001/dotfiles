"if &compatible
"  set nocompatible　デフォルト
"endif

augroup MyAutoCmd
  autocmd!
augroup END

" dein.vimのディレクトリ
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" なければgit clone
if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  "管理するプラグインを記述したファイル
  let g:rc_dir = expand("~/.config/nvim")
  let s:toml = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

"もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

"filetype plugin indent on　デフォルト
"syntax on　デフォルト

" 現在の行を強調表示
set cursorline
"hi clear CursorLine
"hi CursorLineNr term=bold cterm=NONE ctermfg=228 ctermbg=NONE
hi CursorLine guifg=#E19972
"set encording=utf-8　デフォルト
"set fencs=ucs-bom,utf-8,iso-2022-jp,euc-jp,cp932,utf-16le,utf-16,default,latin1
let $LANG='ja_JP.UTF-8'
set helplang=ja,en
"set ruler　デフォルト
set cmdheight=2
" ステータスラインを常に表示
"set laststatus=2　デフォルト
" 行番号を表示
set number
" バッファが編集中でもその他のファイルを開けるように
set hidden
"set wildmenu　デフォルト
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2
set softtabstop=0
" Tab文字を半角スペースにする
set expandtab
"set smarttab　デフォルト
" インデントはスマートインデント
set smartindent
set shiftround
" 括弧入力時の対応する括弧を表示
set showmatch
set whichwrap=b,s,h,l,<,>,[,],~
set list
"行末に改行を表示
set listchars=trail:-,eol:↲
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
"set incsearch
set mouse=a
set splitbelow
set splitright
set spelllang=en,cjk
set clipboard=unnamed

"if exists("$VIRTUAL_ENV")
"  if !empty(glob("$VIRTUAL_ENV/bin/python3"))
"  let g:python3_host_prog = substitute(system("which python3"), '\n', '', 'g')
"  else
"  let g:python_host_prog = substitute(system("which python2"), '\n', '', 'g')
"  endif
"else
let g:python3_host_prog = '/home/rtsuji005/.config/nvim/virtualenv/neovim3/bin/python3'
let g:python_host_prog = '/home/rtsuji005/.config/nvim/virtualenv/neovim2/bin/python2'
"endif

" スペルチェック
nnoremap <silent> <C-l> :<C-u>setlocal spell! spelllang=en_us<CR>:setlocal spell?<CR>

" Preview
nmap <F5> :!~/bin/markdown preview %:p<CR><CR>
