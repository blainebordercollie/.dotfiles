#!/bin/zsh

# Session name
SESSION=*

# If the session is already running, just attach to it. stderr > null
tmux has-session -t $SESSION 2> /dev/null
if [ $? = 0 ]; then
       echo "Session $SESSION already exists. Attaching..."
       sleep 1
       tmux attach -t $SESSION
       exit 0;
fi

# Echo whats going on
echo "No active sessions found."
echo "Creating new session named: $SESSION ..."
sleep 1
# Create a new session, named $SESSION, and detach from it
tmux new-session -d -s $SESSION
# tmux select-window -t $SESSION:0
tmux attach -t $SESSION
