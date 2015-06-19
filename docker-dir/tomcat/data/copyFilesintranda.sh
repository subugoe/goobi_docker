#!/bin/bash

# first parameter src, second parameter dst

if [ -a $2/ ]; then
  exit 0
fi


# Originaleintrag:
# /usr/bin/rsync -a $1/ $2/
#
# der Zusatz
# ionice -c 3 -t 
# setzt die IO-Prioritaet des rsync-Prozesses auf idle 
# und soll die haeufig auftredenden Mini-Verzoegerungen im Dialogbetrieb
# reduzieren.
# 
# Andreas Enoch 25.10.2011 

#ionice -c 3 -t /usr/bin/rsync -a $1/ $2/


#Eingefuegt CM 11.6.12
#PROCESS_COUNT=`ps -e |grep rsync |wc -l`
#10 MB per second divided by count of rsync processes (divided by three since the are there processes per operation: sender, receiver and controller)
#BW=`echo 10000/\($PROCESS_COUNT/3\) |bc`


# Eingefügt CM 26.4.12
#/usr/bin/rsync --bwlimit=10000 -a $1/ $2/

#CM Version 14.6.12
#/usr/bin/rsync -a $1/ $2/

#CM Version 15.6.12
LOG=/var/log/goobi-copy.log
echo "/bin/cp -a $1/ $2/" >> $LOG

/bin/cp -a $1/ $2/

echo finished
