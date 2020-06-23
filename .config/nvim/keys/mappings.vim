" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>  :resize -2<CR>
nnoremap <M-k>  :resize +2<CR>
nnoremap <M-h>  :vertical resize -2<CR>
nnoremap <M-l>  :vertical resize +2<CR>

" Mapping ESC to jk kj using vim-easyescape
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
cnoremap jk <ESC>
cnoremap kj <ESC>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwUi<ESC>

" TAB in general mode will move to next buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go Back
nnoremap <S-TAB> :bprevious<CR>

" Alternative way to save
nnoremap <C-s> :w<CR>

" Alternative way to quit
nnoremap <C-Q> :wq!<CR>

" Comment Line
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :commentary<CR>
