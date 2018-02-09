autoload -Uz compinit promptinit
compinit
promptinit

# Custom stuff
export POWERLINE_SCRIPT="/usr/lib/python3.6/site-packages/powerline/bindings"
. $POWERLINE_SCRIPT/zsh/powerline.zsh

[[ $TMUX = "" ]] && . $HOME/.dotfiles/tmux_session.zsh 
[[ $BROWSER = "" ]] && BROWSER=/usr/bin/chromium

alias ls='ls --color=auto'
alias v='vim -u ~/.dotfiles/vimrc'
export LAMBDA='λ'
