#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sga='sh ~/d/scripts/timer.sh'
alias xcl='sh ~/d/scripts/xclip.sh'
alias p='date; acpi'
alias v="vim -c 'h user-manual|only'"
fastfetch
p
export MANPAGER="vim -M +MANPAGER -"


# 1. Show the whole path from home to the current folder (\w)
PS1='[\u@\h]:\w\$ '
# 2. Increase history memory to 10,000 commands
export HISTSIZE=10000
export HISTFILESIZE=10000

# 3. Synchronize history across all open terminal windows immediately
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

