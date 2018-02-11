# oh-my-zsh stuff
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="nothing"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

# User settings
[[ $TMUX = "" ]] && . $HOME/.dotfiles/tmux_session.zsh
[[ $BROWSER = "" ]] && BROWSER=/usr/bin/chromium-browser

alias v='vim -u ~/.dotfiles/vimrc'
