@echo off
echo start sync to github

ECHO SYNC DEVOPS
cd C:\Users\RAJ\Desktop\devops
ECHO GIT STATUS
git status

ECHO GIT ADD .
git add .

ECHO GIT commit -m "sync"
git commit -m "sync"

ECHO GIT PUSH -U ORIGIN MASTER
git push -u origin master

ECHO SYNC SQLDEV
cd C:\Users\RAJ\Desktop\sqldev
ECHO GIT STATUS
git status

ECHO GIT ADD .
git add .

ECHO GIT commit -m "sync"
git commit -m "sync"

ECHO GIT PUSH -U ORIGIN MASTER
git push -u origin master