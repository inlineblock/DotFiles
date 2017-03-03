set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'danchoi/ruby_bashrockets.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'duff/vim-bufonly'
Plugin 'ervandew/supertab'
Plugin 'jayferd/eco.vim'
Plugin 'jgoulah/cocoa.vim'
Plugin 'skalnik/vim-vroom'
"Plugin 'jdevera/vim-protobuf-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'Lokaltog/vim-powerline'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'Rykka/colorv.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'mgamba/edit-plus'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/Align'
Plugin 'wavded/vim-stylus'
Plugin 'janx/vim-rubytest'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'groenewege/vim-less'

"colorschemes
Plugin 'tomasr/molokai'
Plugin 'Peeja/insert_mode_background_color'

"Command-T (Ruby for mvim)
Plugin 'wincent/Command-T'

"multiple cursors
Plugin 'terryma/vim-multiple-cursors'
call vundle#end()

filetype plugin indent on " they say its required.
