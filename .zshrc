# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="jocafa"
ZSH_THEME="jreese"
export PB_CLIENT_TYPE=Zmq

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew node npm vi-mode taskwarrior)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/Users/dennis/Scripts:/usr/local/sbin:$PATH:/usr/local/CrossPack-AVR/bin
export PATH=/Users/dennis/Scripts:/usr/local/bin:/usr/local/sbin:$PATH
export EDITOR=vim
source $HOME/.rvm/scripts/rvm
#export NODE_PATH=/usr/local/lib/node_modules

alias jslint="jsl -conf ~/.jsl.conf -process"
alias phantomjs="/Applications/phantomjs.app/Contents/MacOS/phantomjs"
alias buspirate="screen /dev/tty.usbserial-A700ekMH 115200 8N1"


bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[5~" beginning-of-history # PageUp
bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab
# for rxvt
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End
# for non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# for guake
bindkey "\eOF" end-of-line
bindkey "\eOH" beginning-of-line
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "\e[3~" delete-char # Del

export GCC=/usr/bin/gcc
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export CC=$GCC
bindkey -e


source ~/.bash_aliases

if [ -d $HOME/bin ]; then
  export PATH=$PATH:$HOME/bin
fi

