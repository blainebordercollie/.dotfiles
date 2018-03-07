# Oh-my-zsh stuff
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="nothing"
plugins=(
git
vi-mode
)
source $ZSH/oh-my-zsh.sh

# User settings
[[ $TMUX = "" ]] && . $HOME/.dotfiles/tmux_session.zsh
[[ $BROWSER = "" ]] && BROWSER=/usr/bin/chromium-browser

alias v='vim'
alias p='python3'
alias c='gcc'

# Set Caps-Lock to ESC and CTRL
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape'

# Vi-Mode cursor indicator
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

# NOT OFFICIALY IMPLEMENTED OH MY ZSH FUNCTION
# Allow Copy/Paste with the system clipboard
# behave as expected with vim commands ( y/p/d/c/s )
[[ -n $DISPLAY ]] && (( $+commands[xclip] )) && {

    function cutbuffer() {
        zle .$WIDGET
        echo $CUTBUFFER | xclip -selection clipboard
    }

    zle_cut_widgets=(
    vi-backward-delete-char
    vi-change
    vi-change-eol
    vi-change-whole-line
    vi-delete
    vi-delete-char
    vi-kill-eol
    vi-substitute
    vi-yank
    vi-yank-eol
    )
    for widget in $zle_cut_widgets
    do
        zle -N $widget cutbuffer
    done

    function putbuffer() {
        zle copy-region-as-kill "$(xclip -selection clipboard -o)"
        zle .$WIDGET
    }

    zle_put_widgets=(
    vi-put-after
    vi-put-before
    )
    for widget in $zle_put_widgets
    do
        zle -N $widget putbuffer
    done
}
