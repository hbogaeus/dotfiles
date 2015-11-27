#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -F'
alias rm='rm -I'
alias uptime='uptime -p'
PS1='\w\$ '
export VISUAL=vim
export EDITOR="$VISUAL"
