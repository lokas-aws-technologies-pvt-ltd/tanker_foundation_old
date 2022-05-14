#!/bin/bash
#get the day of week as a number (i.e. 1 = Monday, 7 = Sunday)
DAY_OF_WEEK=$(date +%F)

#backup 'my_database' to the folder /var/local/backups/mysql/
#$DAY_OF_WEEK is appendend o the file name in order to keep a weekly history of nthe backups
mysqldump -u tankerfo_tanker -ptankerdb tankerfo_tankerdb > /var/www/html/backups/mysql/tankerfo_tankerdb_$DAY_OF_WEEK.sql

#use aws (Amazon's tool) to sync your backups to Amazon S3
#/usr/local/bin/aws - the tool
#s3 - the service we want to use
#sync - the command to run
#/var/local/backups/mysql/ - local folder
#s3://my-backups/mysql/ - Amazon s3 folder
AWS_CONFIG_FILE="/home/ec2-user/.aws/config"
sudo aws s3 sync /var/www/html/backups/mysql/$1/ s3://lokasdbbackups/tanker/$1/