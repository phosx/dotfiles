alias hosts="sudo vim /private/etc/hosts"

alias wpinstall="~/Scripts/wpinstall.sh"
# alias theme="cd ./wp-content/themes/lt-theme"
# alias wpinstall="~/Scripts/wpinstall.sh;theme;npm install;grunt dev"
# alias wpinstallquick="~/Scripts/wpinstall.sh;theme"


alias vhosts="sudo vim /private/etc/apache2/extra/httpd-vhosts.conf"
alias apache.start="sudo apachectl -k start"
alias apache.stop="sudo apachectl -k stop"
alias apache.restart="sudo apachectl -k restart"
alias apache.log="sudo vim /private/var/log/apache2/error_log"
alias apache.conf="sudo vim /private/etc/apache2/httpd.conf"


alias nf="touch ~/Desktop/"

alias c="clear"
alias ll="ls -l"

alias gac="git add -A && git commit -m"
alias ga="git add -A"
alias gs="git status"

alias push="git push origin master"
alias pull="git pull origin master"

alias gitlog1="git log --oneline --graph --decorate --all"
alias gl="git log --oneline --graph --decorate --all"


alias ios="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"


alias vimrc="vim ~/.vimrc"
alias bashp="vim ~/.bash_profile"
alias bashr="source ~/.bash_profile"


alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"

mkcd() {
  mkdir $1 && cd $1 
}

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
alias nginx.logs.default.access='tail -250f /usr/local/etc/nginx/logs/default.access.log'
alias nginx.logs.default-ssl.access='tail -250f /usr/local/etc/nginx/logs/default-ssl.access.log'
alias nginx.logs.phpmyadmin.error='tail -250f /usr/local/etc/nginx/logs/phpmyadmin.error.log'
alias nginx.logs.phpmyadmin.access='tail -250f /usr/local/etc/nginx/logs/phpmyadmin.access.log'export PATH="$(brew --prefix homebrew/php/php55)/sbin:$PATH"

PHP_AUTOCONF="/usr/local/bin/autoconf"




parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}



export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export SASS_LIBSASS_PATH=/usr/local/Cellar/libsass/1.0.1
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin


export WORKON_HOME="$HOME/.virtualenvs"
source /usr/local/bin/virtualenvwrapper.sh

source ~/.profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"



export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"export PATH=/usr/local/sbin:$PATH


