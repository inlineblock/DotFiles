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
map <Leader>c :silent !pbcopy < %<CR>:redraw!<CR>

vnoremap < <gv
vnoremap > >gv

map <Leader>rt ggVG :retab<CR>

"map <C-F> :CommandT<CR>
" i hate flushing, so this just does it for me automatically, but would be
" slow on huge filesets
map <C-F> :CommandTFlush<CR>:CommandT<CR>
map <C-T> :tab new<CR>
nmap <F1> <Esc>
imap <F1> <Esc>

imap <S-BS> <C-[>diwi

vnoremap / 0<C-V>I// <esc>

command GdiffInTab tabedit %|Gdiff

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
