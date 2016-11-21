#vim
alias vi='vim' # never use vi

#git 
alias gs="git status"
alias master="git checkout master"
alias gti="git"

# bundler aliases
alias b="bundle"
alias bi="b install"
alias biv="b install --path vendor"
alias bo="EDITOR=mate b open"
alias bu="b update"
alias bx="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"
alias kill_rails="pkill -9 -f 'rails'"
alias http_server="python -m SimpleHTTPServer"
alias sigterm="kill -15"
alias sigkill="kill -9"
alias build_date="date +%Y%m%d.%H%M"

alias redock="killall Dock"
