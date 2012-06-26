#!/bin/bash -i

#thnx jocafa
cd "$(dirname "$0")"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

removeFiles()
{
	rm -rf ~/.vim
	rm -f ~/.gitconfig ~/.gitignore_global ~/.gvimrc
	rm -rf ~/.inputrc ~/.jshintrc ~/.jsl.conf ~/.vimrc ~/.vundles ~/.zshrc
	rm -rf ~/.bashrc ~/.bash_aliases
}

makeLinks()
{
	mkdir -p ~/.vim/bundle

	ln -s $DIR/.gitignore_global ~/
	ln -s $DIR/.gvimrc ~/
	ln -s $DIR/.inputrc ~/
	ln -s $DIR/.jshintrc ~/
	ln -s $DIR/.jsl.conf ~/
	ln -s $DIR/.vimrc ~/
	ln -s $DIR/*.vim ~/.vim/
	ln -s $DIR/.zshrc ~/
	ln -s $DIR/.bashrc ~/
	ln -s $DIR/.bash_aliases ~/
	ln -s $DIR/.gemrc ~/

	cp $DIR/.gitconfig ~/.gitconfig
}

vundlize ()
{
	if [ -d ~/.vim/bundle/vundle ]; then
		cd ~/.vim/bundle/vundle
		git pull origin master
	else
		git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	fi
	vim +BundleInstall +qall

	# now we need to build command T
	cd ~/.vim/bundle/Command-T/ruby/command-t/
	rvm use system
	CC=/usr/bin/gcc ruby extconf.rb
	CC=/usr/bin/gcc make
}

setgit ()
{
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
}

while true; do
	read -p "Do you want to remove existing files? " yn
	case $yn in
		[Yy]* ) removeFiles; break;;
		[Nn]* ) break;;
		* ) echo "Please answer yes or no.";;
	esac
done

while true; do
	read -p "Do you want to make copy the config and make symlinks? " yn
	case $yn in
		[Yy]* ) makeLinks; break;;
		[Nn]* ) break;;
		* ) echo "Please answer yes or no.";;
	esac
done

while true; do
	read -p "Do you want install Vundle and plugins? " yn
	case $yn in
		[Yy]* ) vundlize; break;;
		[Nn]* ) break;;
		* ) echo "Please answer yes or no.";;
	esac
done


while true; do
	read -p "Do you want setup your gitconfig credentials? " yn
	case $yn in
		[Yy]* ) setgit; break;;
		[Nn]* ) break;;
		* ) echo "Please answer yes or no.";;
	esac
done


