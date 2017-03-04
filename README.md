# RoboLab Startup Service

A systemd service that automatically executes some commands and scripts that speed up the process of testing code during the RoboLab courses.

## What does it do?

1. Initiate a tmux session after boot called `ev3-robolab-startup`
2. Run the Python script `startup.py` in interactive mode which then performs the following steps:
3. Import the package `ev3dev.ev3` as `ev3`.  
This particular import takes a lot of time as it is a huge package that is responsible for all functions related to the LEGO MINDSTORMS EV3 hardware.
4. Import the [`reloader` package](https://pypi.python.org/pypi/reloader/).  
This package is capable of reloading specific modules including their dependencies.
5. Blacklist the ev3dev.ev3 package  
As this package does not alter during the development and testing of Python scripts, we want to avoid reloading it over and over again.
6. Wait for further commands  
As we ran `startup.py` with the `-i` after execution of the past steps, we remain with an open Python interactive shell awaiting further commands.


Developed as part of the RoboLab project at the Systems Engineering Group, TU Dresden.  
Copyright &copy; 2017 Lutz Thies
