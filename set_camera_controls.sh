#!/bin/bash

# Log file
LOG_FILE=/home/pi/set_camera_controls/camera_control_log.txt

# Camera control commands
echo "$(date) - Setting camera controls" >> "$LOG_FILE"
/usr/bin/v4l2-ctl -d /dev/video0 --set-ctrl=auto_exposure=1 >> "$LOG_FILE" 2>&1
/usr/bin/v4l2-ctl -d /dev/video0 --set-ctrl=white_balance_automatic=0 >> "$LOG_FILE" 2>&1
/usr/bin/v4l2-ctl -d /dev/video0 --set-ctrl=focus_automatic_continuous=0 >> "$LOG_FILE" 2>&1
/usr/bin/v4l2-ctl -d /dev/video0 --set-ctrl=focus_absolute=119 >> "$LOG_FILE" 2>&1
/usr/bin/v4l2-ctl -d /dev/video0 --set-ctrl=zoom_absolute=2 >> "$LOG_FILE" 2>&1
/usr/bin/v4l2-ctl -d /dev/video0 --set-ctrl=brightness=100 >> "$LOG_FILE" 2>&1
/usr/bin/v4l2-ctl -d /dev/video0 --set-ctrl=saturation=25 >> "$LOG_FILE" 2>&1
/usr/bin/v4l2-ctl -d /dev/video0 --set-ctrl=brightness=100 >> "$LOG_FILE" 2>&1
/usr/bin/v4l2-ctl -d /dev/video0 --set-ctrl=power_line_frequency=2 >> "$LOG_FILE" 2>&1
/usr/bin/v4l2-ctl -d /dev/video0 --set-ctrl=pan_absolute=-3600 >> "$LOG_FILE" 2>&1
echo "Camera controls set." >> "$LOG_FILE"
