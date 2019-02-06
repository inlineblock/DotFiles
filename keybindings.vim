nnoremap <silent> <Tab> :wincmd w<CR>
nnoremap <silent> <S-Tab> :wincmd W<CR>

map j gj
map k gk

map H ^
map L $

map gf :e <cfile><CR>

map <Leader>gb :Gblame<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gd :GdiffInTab<CR>
map <Leader>c :silent !pbcopy < %<CR>:redraw!<CR>

vnoremap < <gv
vnoremap > >gv

map <Leader>rt ggVG :retab<CR>

map <C-F> :CtrlP<CR>
map <C-T> :tab new<CR>
nmap <F1> <Esc>
imap <F1> <Esc>

imap <S-BS> <C-[>diwi

command GdiffInTab tabedit %|Gdiff
map <Leader>L <Plug>RubyLastRun
map <Leader>n :NERDTree<CR>
