#!/bin/sh
#thnx jocafa
mkdir -p ~/.vim/bundle

ln -s .gitconfig ~/
ln -s .gitignore_global ~/
ln -s .gvimrc ~/
ln -s .inputrc ~/
ln -s .jshintrc ~/
ln -s .jsl.conf ~/
ln -s .vimrc ~/
ln -s .vundles ~/
ln -s .zshrc ~/

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

