set background=dark
set t_Co=256
" colorscheme 設定は source 後に行う必要があるので VimEnter で行う。
" 但し Colorscheme イベントの発生が抑制されないよう nested を付ける。
au MyAutoCmd VimEnter * nested colorscheme molokai
