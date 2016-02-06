#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -h --color=auto'
export PS1='\[\033[01;32m\]\u@\h \[\033[00;31m\]\W \$ \[\033[00m\]'
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

export EDITOR=/usr/bin/emacs

# Virtualenvs
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

source ~/.ledger/ledger-alias
