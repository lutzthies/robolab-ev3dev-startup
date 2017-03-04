#
# Regular cron jobs for the ev3-robolab-startup package
#
0 4	* * *	root	[ -x /usr/bin/ev3-robolab-startup_maintenance ] && /usr/bin/ev3-robolab-startup_maintenance
