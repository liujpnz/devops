#disable send mail
MAILTO=""

#when change time zone, reload or restart cron service
sudo service cron restart

#crontab to execute every 2 hours starting at 10am and the last one running at 10pm

0 10/2 * * * /directory/job.sh would do it.

0 10-22/2 * * * /directory/job.sh would do it and be more explicit.

0 10,12,14,16,18,20,22 * * * /directory/job.sh would do it, too.
