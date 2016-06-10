set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'danchoi/ruby_bashrockets.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'duff/vim-bufonly'
Bundle 'ervandew/supertab'
Bundle 'jayferd/eco.vim'
Bundle 'jgoulah/cocoa.vim'
Bundle 'skalnik/vim-vroom'
"Bundle 'jdevera/vim-protobuf-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'elzr/vim-json'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
Bundle 'mattn/emmet-vim'
Bundle 'pangloss/vim-javascript'
Bundle 'mxw/vim-jsx'
Bundle 'Rykka/colorv.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-scripts/Align'
Bundle 'wavded/vim-stylus'
Bundle 'janx/vim-rubytest'
Bundle 'mtscout6/syntastic-local-eslint.vim'

"colorschemes
Bundle 'tomasr/molokai'

"Command-T (Ruby for mvim)
Bundle 'wincent/Command-T'

"multiple cursors
Bundle 'terryma/vim-multiple-cursors'

filetype plugin indent on " they say its required.
