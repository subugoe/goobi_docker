#!/bin/bash

# first parameter src, second parameter dst

## send email after successfull copy
SEND_EMAIL_AFTER_COPY=false
SEND_EMAIL_ADDRESS_SUCCESS="jan.toenjes@intranda.com"
SEND_EMAIL_ADDRESS_FAILURE="jan.toenjes@intranda.com"
SEND_EMAIL_HEADER_SUCCESS="SUCCESS: file copy finished successfull"
SEND_EMAIL_HEADER_FAILURE="FAILURE: file copy not finished"


/usr/bin/rsync -a $1/ $2/

if [ "$SEND_EMAIL_AFTER_COMPRESS" == "true" ]; then
  
  if [ "`ls $1 | wc -w`" == "`ls $2 | wc -w`" ]; then
    echo "$SEND_EMAIL_HEADER_SUCCESS" | mail -s "SUCCESS: copy - `basename $2 | sed 's/_tif//g'`" $SEND_EMAIL_ADDRESS_SUCCESS
  fi

  if [ "`ls $1 | wc -w`" != "`ls $2 | wc -w`" ]; then
    echo "$SEND_EMAIL_HEADER_FAILURE" | mail -s "FAILURE: copy - `basename $2 | sed 's/_tif//g'`" $SEND_EMAIL_ADDRESS_FAILURE
  fi
fi
