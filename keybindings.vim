
nnoremap <silent> <Tab> :wincmd w<CR>
nnoremap <silent> <S-Tab> :wincmd W<CR>

map j gj
map k gk

map H ^
map L $

map gf :e <cfile><CR>

map <Leader>n :NERDTree<CR>
vnoremap < <gv
vnoremap > >gv

"map <C-F> :CommandT<CR>
map <C-F> :CommandTFlush<CR>:CommandT<CR>
map <C-T> :tab new<CR>
map <C-P> :e#<CR>
nmap <F1> <Esc>
imap <F1> <Esc>
