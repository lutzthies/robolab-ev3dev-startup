#!/bin/sh

# initiate a new session but stay detached, as it is for remote clients
echo "Initiating new tmux session ev3-robolab-startup"

# base socket for tmux sessions
TMUXDIR=/tmp/tmux/
# create if it does not exist,
mkdir -p /tmp/tmux/

# create new session for this socket and stay detached
tmux -S $TMUXDIR new-session -d -s ev3-robolab-startup
# it is crucial to change to the working directory before running startup.py
tmux -S $TMUXDIR send -t ev3-robolab-startup 'cd /home/robot/src/' ENTER
# execute startup.py manually as the interactive shell won't import any local module otherwise
tmux -S $TMUXDIR send -t ev3-robolab-startup 'import ev3dev.ev3 as ev3' ENTER
tmux -S $TMUXDIR send -t ev3-robolab-startup 'import reloader' ENTER
tmux -S $TMUXDIR send -t ev3-robolab-startup 'reloader.enable(blacklist=['ev3dev.ev3', 'ev3dev', 'ev3'])' ENTER
tmux -S $TMUXDIR send -t ev3-robolab-startup 'import os' ENTER
tmux -S $TMUXDIR send -t ev3-robolab-startup 'print("ev3-robolab-startup v.1.0")' ENTER
tmux -S $TMUXDIR send -t ev3-robolab-startup 'print("Working directory is:", os.getcwd())' ENTER
tmux -S $TMUXDIR send -t ev3-robolab-startup 'print("Beginning with execution")' ENTER
tmux -S $TMUXDIR send -t ev3-robolab-startup 'print("-------------------------")' ENTER
tmux -S $TMUXDIR send -t ev3-robolab-startup 'import main' ENTER
