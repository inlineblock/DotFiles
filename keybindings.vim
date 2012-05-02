"===== My Keybindings, some are perm, some are me testing it out ====="
nnoremap <silent> <Tab> :wincmd w<CR>
nnoremap <silent> <S-Tab> :wincmd W<CR>

map j gj
map k gk

map H ^
map L $

map gf :e <cfile><CR>

map <Leader>n :NERDTree<CR>
map <Leader>gb :Gblame<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gd :GdiffInTab<CR>
vnoremap < <gv
vnoremap > >gv

"map <C-F> :CommandT<CR>
" i hate flushing, so this just does it for me automatically, but would be
" slow on huge filesets
map <C-F> :CommandTFlush<CR>:CommandT<CR>
map <C-T> :tab new<CR>
nmap <F1> <Esc>
imap <F1> <Esc>


command GdiffInTab tabedit %|Gdiff
