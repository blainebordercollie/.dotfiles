autoload -Uz compinit promptinit
compinit
promptinit

# Custom stuff
PATH=$HOME/.local/bin:$PATH
. $HOME/.local/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh

[[ $TMUX = "" ]] && . $HOME/.dotfiles/tmux_session.zsh 
[[ $BROWSER = "" ]] && BROWSER=/usr/bin/chromium-browser

alias ls='ls --color=auto'
alias v='vim'
export LAMBDA='λ'
