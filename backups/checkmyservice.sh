#!/bin/bash
# A simple script to check if a process is running and if not will
# restart the process and send a mail.
################################################
# The name of the program we want to check
PROGRAM=mysqld
 
# The user we would like notified of the restart
MAILUSER="prakash@lokas.info, raghav@lokas.in, raghu@lokas.in"
from="prakash@lokas.info"
################################################

PROCESSPID=$(/sbin/pidof -s $PROGRAM)
if [ -z "$PROCESSPID" ];
then
# Use systemctl
#systemctl stop $PROGRAM.service
#systemctl start $PROGRAM.service
# Comment above and uncomment below to use service rather than systemctl
# sudo service $PROGRAM restart
#MAILSUBJECT= ""
#echo -e $MAILSUBJECT | /usr/sbin/sendmail "$MAILUSER"
sudo /usr/sbin/sendmail -f "$from" -t "$MAILUSER" <<EOF
subject:mysqld stopped issue
from:$from
Service $PROGRAM was found to be stopped on tankerfoundation.org at $(date) 
EOF
echo "$PROGRAM had FAILED on $HOSTNAME @ $(date)" >> $PROGRAM-check.log
else
echo "$PROGRAM was running ok on $HOSTNAME @ $(date)" >> $PROGRAM-check.log
fi
exit