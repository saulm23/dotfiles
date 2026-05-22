#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias x=tmux
alias e=exit
alias t=date
alias s='source ~/.bashrc'
alias sga='sh ~/dotfiles/scripts/timer.sh'
alias xcl='sh ~/dotfiles/scripts/xclip.sh'
