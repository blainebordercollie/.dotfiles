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

# Set Caps-Lock to ESC and CTRL
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape'

# Vi mode + cursor indicator
zle-keymap-select () {
if [ $TERM = "xterm-termite" ]; then
    if [ $KEYMAP = vicmd ]; then
        echo -ne "\e[1 q"
    else
        echo -ne "\e[3 q"
    fi
fi
}

zle -N zle-keymap-select

zle-line-init () {
    zle -K viins
    if [ $TERM = "xterm-termite" ]; then
        echo -ne "\e[3 q"
    fi
}

zle -N zle-line-init

bindkey -v
export KEYTIMEOUT=1
