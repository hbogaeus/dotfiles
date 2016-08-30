#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias cal='cal -m'
alias grep='grep -n --color=auto'
alias ls='ls -aF --color=auto'
alias cls='clear'
alias rm='rm -I'
alias kista='ssh bogaeus@shell.it.kth.se'
alias uptime='uptime -p'
alias poweroff='clear;~/seeyouspacecowboy.sh;sleep 3;poweroff'
alias reboot='clear;uptime;sleep 3;reboot'
alias update='sudo pacman -Syu'

PS1='\u \w\$ '

export VISUAL=vim
export EDITOR="$VISUAL"
# Used by bspwm to find config 
export XDG_CONFIG_HOME="$HOME/.config/"
# Add to path variable
export PATH=$PATH:/~/bin
