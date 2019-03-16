nnoremap [denite] <Nop>
nmap <C-d> [denite]
"現在開いているファイルのディレクトリ下のファイル一覧。
nnoremap <silent> [denite]f :<C-u>Denite -direction=topleft -cursor-wrap=true file_rec<CR>
"バッファ一覧
nnoremap <silent> [denite]b :<C-u>Denite -direction=topleft -cursor-wrap=true buffer<CR>
"レジスタ一覧
nnoremap <silent> [denite]r :<C-u>Denite -direction=topleft -cursor-wrap=true -buffer-name=register register<CR>
"最近使用したファイル一覧
nnoremap <silent> [denite]m :<C-u>Denite -direction=topleft -cursor-wrap=true file_mru<CR>
"ブックマーク一覧
nnoremap <silent> [denite]c :<C-u>Denite -direction=topleft -cursor-wrap=true bookmark<CR>
"ブックマークに追加
nnoremap <silent> [denite]a :<C-u>DeniteBookmarkAdd<CR>
".git以下のディレクトリ検索
nnoremap <silent> [denite]k :<C-u>Denite -direction=topleft -cursor-wrap=true -path=`substitute(finddir('.git', './;'), '.git', '', 'g')` file_rec/git<CR>
