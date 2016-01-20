#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -1 --color=auto -F'
alias kista='ssh bogaeus@shell.it.kth.se'
alias uptime='uptime -p'
alias poweroff='uptime;sleep 2;poweroff'
PS1='\u \w\$ '
export VISUAL=vim
export EDITOR="$VISUAL"
