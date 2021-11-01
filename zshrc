# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="jocafa"
ZSH_THEME="jreese"

export PB_CLIENT_TYPE=Zmq
export PB_IGNORE_DEPRECATIONS=1
export GIT_MERGE_AUTOEDIT=no

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
plugins=(git mercurial brew node npm vi-mode)

if [ -f $ZSH/oh-my-zsh.sh ]; then
  source $ZSH/oh-my-zsh.sh
fi

# Customize to your needs...
#export PATH=/Users/dennis/Scripts:/usr/local/sbin:$PATH:/usr/local/CrossPack-AVR/bin
export PATH=/Users/dennis/Scripts:/usr/local/bin:/usr/local/sbin:$PATH
export EDITOR=vim
if ! type bindkey > /dev/null; then
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

  bindkey -e
fi

if [ -f /usr/bin/gcc ]; then
  export GCC=/usr/bin/gcc
  export CC=$GCC
fi

if [ -f $HOME/.privaterc ]; then
  source $HOME/.privaterc
fi

if [ -d $HOME/.rbenv/shims ]; then
  export PATH="$HOME/.rbenv/shims:$PATH"
  eval "$(rbenv init -)"
fi


if [ -f $HOME/.bash_aliases ]; then
  source $HOME/.bash_aliases
fi
if [ -f $HOME/.bash_functions ]; then
  source $HOME/.bash_functions
fi

if [ -d $HOME/bin ]; then
  export PATH=$PATH:$HOME/bin
fi

if [ -f $HOME/.profile ]; then
  source ~/.profile
fi

if [ -d /usr/local/share/npm/bin ]; then
  export PATH=$PATH:/usr/local/share/npm/bin
fi

if type tmux >/dev/null 2>/dev/null; then
  if [[ -n "$PS1" ]] && [[ -z "$TMUX" ]] && [[ -n "$SSH_CONNECTION" ]]; then
    tmux attach
  fi
fi


### Added by the Heroku Toolbelt
if [ -d /usr/local/heroku/bin ]; then
  export PATH="/usr/local/heroku/bin:$PATH"
fi


export NVM_DIR="$HOME/.nvm"
if [ -d $NVM_DIR ]; then
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
fi

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

ZSH_THEME_HG_PROMPT_PREFIX="%{$fg_bold[magenta]%}hg:(%{$fg[red]%}"
ZSH_THEME_HG_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_HG_PROMPT_DIRTY="%{$fg[magenta]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_HG_PROMPT_CLEAN="%{$fg[magenta]%})"
PROMPT='%{$fg[$NCOLOR]%}%n%{$fg[green]%}@%m%{$reset_color%} %~ \
$(git_prompt_info)$(hg_prompt_info)\
%{$fg[red]%}%(!.#.»)%{$reset_color%}'

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
