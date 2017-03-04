#!/bin/sh

# initiate a new session but stay detached, as it is for remote clients
tmux new-session -d -s ev3-robolab-startup python3 startup.py
