nnoremap <silent><C-t> :NERDTreeToggle<CR>
" ファイルを開いたらNERDTreeを閉じる
let g:NERDTreeQuitOnOpen=1
" 隠しファイルを表示
let g:NERDTreeShowHidden=1
" 非表示ファイル
let g:NERDTreeIgnore=['\.git$', '\.clean$', '\.swp$', '\.bak$', '\~$']
