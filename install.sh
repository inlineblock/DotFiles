#!/bin/bash -i

#thnx jocafa
cd "$(dirname "$0")"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

removeFiles()
{
	rm -rf ~/.vim
	rm -f ~/.gitconfig ~/.gitignore_global ~/.gvimrc ~/.gemrc
	rm -rf ~/.inputrc ~/.vimrc ~/.vundles ~/.zshrc ~/.bash_functions
	rm -rf ~/.bashrc ~/.bash_aliases
  rm -f ~/.tmux.conf
}

makeLinks()
{
	mkdir -p ~/.vim/bundle

	ln -s $DIR/gitignore_global ~/.gitignore_global
	ln -s $DIR/gvimrc ~/.gvimrc
	ln -s $DIR/inputrc ~/.inputrc
	ln -s $DIR/vimrc ~/.vimrc
	ln -s $DIR/*.vim ~/.vim/
	ln -s $DIR/zshrc ~/.zshrc
	ln -s $DIR/bashrc ~/.bashrc
	ln -s $DIR/bash_aliases ~/.bash_aliases
	ln -s $DIR/bash_functions ~/.bash_functions
	ln -s $DIR/gemrc ~/.gemrc
	ln -s $DIR/tmux.conf ~/.tmux.conf

	cp $DIR/gitconfig ~/.gitconfig
}

vundlize ()
{
	if [ -d ~/.vim/bundle/vundle ]; then
		cd ~/.vim/bundle/vundle
		git pull origin master
	else
		git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	fi
	vim +PluginInstall +qall
	cd ~/.vim/bundle/vim-prettier
  yarn install
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
  git config --global push.default simple
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


