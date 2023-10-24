export PATH=/opt/homebrew/bin:$PATH

# Common
alias ..="cd .."
alias ls="ls -l --color"
alias l="ls -l --color"

# Python
alias pm="python manage.py"
alias plg="pip list | grep"

alias v="nvim"

# Rakort
alias tls="tmux ls"
alias ta="tmux attach -t"

# For python automatically activate environment
function cd() {
  builtin cd "$@"

  if [[ -z "$VIRTUAL_ENV" ]] ; then
      if [[ -d ./.venv ]] ; then
        source ./.venv/bin/activate
      fi
  else
      parentdir="$(dirname "$VIRTUAL_ENV")"
      if [[ "$PWD"/ != "$parentdir"/* ]] ; then
        deactivate
      fi
  fi
}
