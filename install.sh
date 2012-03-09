#!/bin/bash

#thnx jocafa
cd "$(dirname "$0")"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

removeFiles()
{
	rm -rf ~/.vim/bundle
	rm -f ~/.gitconfig ~/.gitignore_global ~/.gvimrc ~/.inputrc ~/.jshintrc ~/.jsl.conf ~/.vimrc ~/.vundles ~/.zshrc
}

while true; do
	read -p "Do you want to remove existing files? " yn
	case $yn in
		[Yy]* ) removeFiles; break;;
		[Nn]* ) break;;
		* ) echo "Please answer yes or no.";;
	esac
done


mkdir -p ~/.vim/bundle

cp $DIR/.gitconfig ~/
ln -s $DIR/.gitignore_global ~/
ln -s $DIR/.gvimrc ~/
ln -s $DIR/.inputrc ~/
ln -s $DIR/.jshintrc ~/
ln -s $DIR/.jsl.conf ~/
ln -s $DIR/.vimrc ~/
ln -s $DIR/.vundles ~/
ln -s $DIR/.zshrc ~/

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# now we need to build command T
cd ~/.vim/bundle/Command-T/ruby/command-t/
ruby extconf.rb
rvm use system
make

echo ""
echo ""
echo "Git commit name: "
read gname
if [[ ! -z $gname ]] ; then
	git config --global user.name "$gname"
fi
echo ""
echo "Git commit email: "
read gemail
if [[ ! -z $gemail ]] ; then
	git config --global user.email "$gemail"
fi

