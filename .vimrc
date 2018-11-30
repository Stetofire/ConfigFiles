syntax on
colorscheme pablo

" Change tab etc. chars
" ༻  ﴿ ᚛ ┈ ― ─
set list listchars=tab:﴿─,nbsp:┈,extends:᚛
au BufEnter * highlight NonText ctermfg=237
au BufEnter * highlight SpecialKey ctermfg=237
" Display filename in window bar
" autocmd BufEnter * let &titlestring = $USER . "@" . hostname() . " - " . expand("%:h") . " - " . expand("%:t")
autocmd BufEnter * let &titlestring = expand("%:t") . " - " . expand("%:h")
set title

set tabstop=4
set autoindent

" Add custom commands
" New movement options while in insert mode
inoremap <silent> <C-k> <up>
inoremap <silent> <C-j> <down>
inoremap <silent> <C-h> <left>
inoremap <silent> <C-l> <right>
" New tab switchers
nnoremap <silent> <C-h> <C-PageUp>
nnoremap <silent> <C-l> <C-PageDown>
" Shift tabs left/right
nnoremap <silent> <C-j> :tabm -1<CR>
nnoremap <silent> <C-k> :tabm +1<CR>
" New tab creator
nnoremap , :tabnew .<CR>
" Recognize all :W's
:command W w
" Return to explorer
nnoremap - :Exp<CR>

