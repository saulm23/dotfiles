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
alias k='history > ~/.bash_history1; tmux kill-session'
alias h='nvim ~/.bash_history1'
alias p='date; acpi'
fastfetch
