#!/bin/zsh

# Session name
SESSION=*

# If the session is already running, just attach to it.
tmux has-session -t $SESSION
if [ $? = 0 ]; then
       echo "Session $SESSION already exists. Attaching."
       sleep 2
       tmux attach -t $SESSION
       exit 0;
fi

# Create a new session, named $SESSION, and detach from it
tmux new-session -d -s $SESSION
tmux select-window -t $SESSION:0
tmux attach -t $SESSION
