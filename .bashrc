#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export TERM="rxvt-unicode-256color"

alias ls='ls -h --color=auto'
export PS1='\[\033[01;32m\]\u@\h \[\033[00;31m\]\W \$ \[\033[00m\]'
