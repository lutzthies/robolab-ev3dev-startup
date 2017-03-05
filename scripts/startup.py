import ev3dev.ev3 as ev3
import reloader
reloader.enable(blacklist=['ev3dev.ev3', 'ev3dev', 'ev3'])
import os
print("ev3-robolab-startup v.1.0")
print("Working directory is:", os.getcwd())
print("Beginning with execution")
print("-------------------------")
import main
