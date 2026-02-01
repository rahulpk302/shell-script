#!/bin/bash
SERVICE="httpd"
if ! systemctl is-active --quiet $SERVICE; then
   echo "$SERVICE is Down. Restarting...."
   systemctl start $SERVICE
else
   echo "$SERVICE Is Running"
fi
