#!/bin/sh

# base socket for tmux sessions
TMUXDIR=/tmp/tmux/
# default session name
DEFAULT_SESSION=ev3-robolab-startup

# kill our session
echo "Killing tmux session ev3-robolab-startup"
tmux -S $TMUXDIR kill-session -t $DEFAULT_SESSION
# clean up
rm -r $TMUXDIR
