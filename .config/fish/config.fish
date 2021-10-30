#   __ _     _
#  / _(_)___| |__
# | |_| / __| '_ \
# |  _| \__ \ | | |
# |_| |_|___/_| |_|

set fish_greeting
set -gx TERM xterm-256color

fish_vi_key_bindings

set -gx EDITOR nvim

# NodeJS
set -gx PATH node_modules/.bin $PATH

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

alias vi "nvim"
alias v "nvim"
alias git "hub"
alias g "hub"
alias clear-bugfix "git branch | grep 'bugfix' | xargs git branch -D"
alias clear-features "git branch | grep 'feature' | xargs git branch -D"
alias pulla "find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;"

export MANPAGER='nvim +Man!'
