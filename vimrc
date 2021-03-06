"------------------------------------------------------------------[General]----"
scriptencoding utf-8
set encoding=utf-8
source ~/.vim/vundles.vim
set secure "locks down the exrc setting
set exrc "enable cwd .vimrc files
	
set nocompatible

syntax on
filetype plugin indent on

set backspace=indent,eol,start
set shiftwidth=2 tabstop=2 softtabstop=2 expandtab

set nowrap
set nofoldenable
set autoindent
	

set vb
set t_vb=""

set backup
set swapfile
set backupdir=/tmp
set directory=/tmp

set lazyredraw

set complete=.,w,k,b,u,t,i
set completeopt=menu
let mapleader=","

"-------------------------------------------------------------------[Layout]----
set nu
set laststatus=2
"set ruler
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

set splitbelow
set splitright

"set list
"set pumheight=5

colorscheme molokai
"set bg=light

syn on
source ~/.vim/autocmd.vim
source ~/.vim/keybindings.vim

silent! set colorcolumn=90

function! SyntaxItem()
	return synIDattr(synID(line("."),col("."),1),"name")
endfunction

"set statusline+=%{SyntaxItem()}

"--------------------------------------------------------------[Plugins]----
let g:SuperTabSetDefaultCompletionType="context"
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
nmap <leader>tb :TagbarToggle<CR>
let g:syntastic_javascript_checkers = ['eslint']
silent! sign define SyntasticError text=!>
silent! sign define SyntasticWarning text=W>

"---------------------------------------------------------------[Search]----
set hlsearch
set incsearch
set smartcase
set ignorecase

"-----------------------------------------------------------[Navigation]----
set mouse=a
set hidden
set scrolloff=5
set scrolljump=5
set sidescrolloff=5
set sidescroll=1
set wildmenu
set showmatch
set matchtime=2

set wildignore+=*.o,*.obj,.git,*/tmp/*,*.gif,*.png,*.jpg,*.jpeg,*.eot,*.ttf,*.woff,*.gem,*.swf,*/log/**,*/node_modules/*,*/public/channels/*,*.git/*

set backupskip=/tmp/*,/private/tmp/*
"-----------------------------------------------------------[JavaScript]----
let g:jsx_ext_required = 0
let javascript_enable_domhtmlcss = 1
let g:vim_json_syntax_conceal = 0
"-------------------------------------------------------------[NerdTree]----
let g:NERDTreeChDirMode = 0
let g:NERDTreeShowHidden = 1
let g:spf13_no_autochdir = 1
set noautochdir
"-----------------------------------------------------------[EasyMotion]----
let g:EasyMotion_smartcase = 1
nmap f <Plug>(easymotion-s2)
nmap F <Plug>(easymotion-t2)
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
