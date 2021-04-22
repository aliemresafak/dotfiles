#!/bin/bash

PS1="\e[0;32m\\u\e[m | \e[0;34m\\W\e[m % "

# Disable bash_history
unset HISTFILE

LS_TIME_HOUR="+%H:%M:%S"
LS_TIME_FULL="'+%Y-%m-%d %H:%M:%S'"

# Alias 
alias ..="cd .."
alias l="ls -lh --time-style=$LS_TIME_HOUR --color"
alias ls="ls --color"
alias la="ls -la --time-style=$LS_TIME_HOUR --color"
alias lh="ls -lh --time-style=$LS_TIME_HOUR --color"
alias lf="ls -lh --time-style=$LS_TIME_FULL"


tmux has-session -t personal || tmux new-session -A -d -s personal
tmux has-session -t bilgin || tmux new-session -A -d -s bilgin
