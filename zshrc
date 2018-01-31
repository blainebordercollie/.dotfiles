autoload -Uz compinit promptinit
compinit
promptinit

# Custom stuff
PATH=/home/blaine/.local/bin:$PATH
. /home/blaine/.local/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh

[[ $TMUX = "" ]] && exec tmux

alias ls='ls --color=auto'
alias v='vim'
export LAMBDA='λ'
