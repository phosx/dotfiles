export ZSH=/Users/pat/.oh-my-zsh
ZSH_THEME="wezm"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd/mm/yyyy"
plugins=(git brew)


source $ZSH/oh-my-zsh.sh


alias vimrc="vim ~/dotfiles/vimrc"
alias zshrc="vim ~/dotfiles/zshrc"
alias zshr="source ~/.bash_profile"

alias c="clear"
alias ll="ls -lG"

alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"

alias dt="cd ~/Desktop"
alias phos="cd ~/Desktop/phosx"
alias rex="cd ~/Desktop/SGS/Ruby/exercises"
alias rai="cd ~/Desktop/SGS/Rails/"

mkcd() {
  mkdir $1 && cd $1 
}


# git {{{
alias g="git"
alias gs="git status"
alias ga="git add"
alias gac="git add -A && git commit -m"
alias gc="git checkout"
alias gb="git branch"
alias gps="git push"
alias gpl="git pull"

alias push="git push origin master"
alias pull="git pull origin master"

alias gl="git log --oneline --graph --decorate --all"
# }}}


# Bash Scripts {{{
alias wpinstall="~/Scripts/wpinstall.sh"
# }}}



# local webserver {{{

alias hosts="sudo vim /private/etc/hosts"

alias nginx.start='sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.stop='sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.restart='nginx.stop && nginx.start'
alias nginx.config='vim /usr/local/etc/nginx/'

alias php.config='vim /usr/local/etc/php/'
alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php55.plist"
alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php55.plist"
alias php-fpm.restart='php-fpm.stop && php-fpm.start'

alias mysql.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.restart='mysql.stop && mysql.start'

alias nginx.logs.error='tail -250f /usr/local/etc/nginx/logs/error.log'
alias nginx.logs.access='tail -250f /usr/local/etc/nginx/logs/access.log'

alias vhosts="sudo vim /private/etc/apache2/extra/httpd-vhosts.conf"
alias apache.start="sudo apachectl -k start"
alias apache.stop="sudo apachectl -k stop"
alias apache.restart="sudo apachectl -k restart"
alias apache.log="sudo vim /private/var/log/apache2/error_log"
alias apache.conf="sudo vim /private/etc/apache2/httpd.conf"

# }}}

alias killrs="rm tmp/pids/server.pid && kill -9 $(lsof -i tcp:3000 -t)"

alias fuck='sudo $(history -p \!\!)'

# Path info {{{

#export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:$(brew --prefix homebrew/php/php55)/sbin"

PHP_AUTOCONF="/usr/local/bin/autoconf"
export SASS_LIBSASS_PATH=/usr/local/Cellar/libsass/1.0.1

export WORKON_HOME="$HOME/.virtualenvs"
source /usr/local/bin/virtualenvwrapper.sh

# }}}


# RBENV {{{

# To use Homebrew's directories rather than ~/.rbenv add to your profile:
# export RBENV_ROOT=/usr/local/var/rbenv

# To enable shims and autocompletion add to your profile:
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

eval export PATH="/Users/pat/.rbenv/shims:${PATH}"
source "/usr/local/Cellar/rbenv/0.4.0/completions/rbenv.zsh"
rbenv rehash 2>/dev/null
rbenv() {
  typeset command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval `rbenv "sh-$command" "$@"`;;
  *)
    command rbenv "$command" "$@";;
  esac
}










# }}}


