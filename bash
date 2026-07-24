#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias sga='sh ~/d/scripts/timer.sh'
alias xcl='sh ~/d/scripts/xclip.sh'
alias p='date; acpi'
alias v="vim -c 'h user-manual|only'"
fastfetch
p
