#!/bin/bash

Thresold_warn=70
Thresold_critical=80
Thresold_ticket=90
email_to="rahul.p.kumthekar@gmail.com"

disk_usage=$(df -h | grep "/dev/*" |  awk '{print $1, $5}' | tr -d '%')

if [ -z "$disk_usage" ]; then
  echo "ERROR: Disk usage is disk not found"
  exit1
fi

if [ "$disk_usage" -ge "$Thresold_ticket" ]; then
 echo "TICKET: High alert" | mail -s "High alert" $(email_to)

elif [ "disk_usage" -ge "$Thresold_critical" ]; then
 echo  "TICKET: Crititcal alert" | mail -s "Crititcal alert" $(email_to)

elif [ "disk_usage" -ge "$Thresold_warn" ]; then
 echo "TICKET: warn alert" | mail -s "warn alert" $(email_to)

else
 echo "OK: Disk Usage is $(disk_usage)"

fi:wq


################
if [ -z "$DISK_USAGE" ]; then
  echo "ERROR: Disk $DISK not found"
  exit 1
fi

if [ "$DISK_USAGE" -ge "$THRESHOLD_TICKET" ]; then
    echo "TICKET: Disk usage is ${DISK_USAGE}% on $DISK"
    # create_ticket_func

elif [ "$DISK_USAGE" -ge "$THRESHOLD_CRIT" ]; then
    echo "CRITICAL: Disk usage is ${DISK_USAGE}% on $DISK"
    # send_critical_alert

elif [ "$DISK_USAGE" -ge "$THRESHOLD_WARN" ]; then
    echo "WARNING: Disk usage is ${DISK_USAGE}% on $DISK"
    # send_warning_alert

else
    echo "OK: Disk usage is ${DISK_USAGE}% on $DISK"
fi

