#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias cal='cal -m'
alias grep='grep -n --color=auto'
alias ls='ls -F --color=auto'
alias kista='ssh bogaeus@shell.it.kth.se'
alias uptime='uptime -p'
alias poweroff='uptime;sleep 2;poweroff'
PS1='\u \w\$ '
export VISUAL=vim
export EDITOR="$VISUAL"
