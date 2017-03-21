# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="tjkirch"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias lsl="ls -alh"
alias gd="git diff"
alias gs="git status"
alias docker-logs-truncate="docker-machine ssh default -- 'sudo find /var/lib/docker/containers/ -iname \"*json.log\"|xargs -I{} sudo dd if=/dev/null of={}'"

rpoop () { repeat 10000 (fswatch -1 -m kqueue_monitor .gitignore; docker-compose run --rm web bundle exec zeus rspec $@ --order defined --fail-fast) }

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
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler cap gem heroku thor rvm)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH # defaults to what's in /etc/zshenv

export MAGICK_HOME="$HOME/bin/ImageMagick-6.6.7"
PATH=~/bin:/usr/local/mysql/bin:$MAGICK_HOME/bin:/usr/local/bin:/usr/local/share/npm/bin:"${PATH}"
export PATH

NODE_PATH=/usr/local/lib/node_modules:"${PATH}"
export NODE_PATH

export PATH=./.git/safe/../../bin:"${PATH}"

export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

export EDITOR="vim"
bindkey -v 

# vi style incremental search

bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

export LC_ALL=en_US.UTF-8

setopt HIST_IGNORE_SPACE

setopt AUTO_CD
unsetopt correct_all
