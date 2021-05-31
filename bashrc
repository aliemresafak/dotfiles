#!/bin/bash
# PS1="\e[0;32m\\u\e[m | \e[0;34m\\W\e[m % "

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

# alias venv="virtualenv venv && source venv/bin/activate"
alias venv="python -m venv venv"

function check_session {
  tmux has-session -t "$1" 2>/dev/null
  if [ "$?" -eq 1 ]; then
    tmux new-session -d -s "$1"
  fi
}

check_session "personal"
alias personal="tmux attach -t personal"

alias v="vim"
