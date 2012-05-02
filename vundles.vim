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
Bundle 'jdevera/vim-protobuf-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
Bundle 'mattn/zencoding-vim'
Bundle 'pangloss/vim-javascript'
Bundle 'Rykka/ColorV'
Bundle 'scrooloose/nerdcommenter'
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

"colorschemes
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'vim-scripts/TuttiColori-Colorscheme'
Bundle 'vim-scripts/Warm-grey'
Bundle 'vim-scripts/eclm_wombat.vim'
Bundle 'vim-scripts/paintbox'
Bundle 'vim-scripts/pyte'
Bundle 'vim-scripts/rdark'
Bundle 'vim-scripts/rdark-terminal'
Bundle 'vim-scripts/silent.vim'
Bundle 'vim-scripts/vanzan_color'

"Command-T (Ruby for mvim)
Bundle 'wincent/Command-T'

filetype plugin indent on " they say its required.
