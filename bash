#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='[\h \W]\$ '

alias e=exit
alias p=poweroff
alias s=startx
alias cl='clear;ls -laFi'
alias cl='clear;ls -laFhi'

alias t=date
