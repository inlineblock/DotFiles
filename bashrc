source .zshrc

alias vi="vim" # always.

if [ -d $HOME/.rvm ]; then
  PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
fi
