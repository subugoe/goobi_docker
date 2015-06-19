#!/bin/bash

#
# script_umounteImageDir.sh
# script called by Goobi to remove link to processes from user home directory
#
# intranda GmbH
#


# first argument: name of link
LINKNAME="$1"

PERMOUDIR=/opt/digiverso/other/mounts/
PROCESSTITLE=$(basename $(echo $LINKNAME))



## check if directory is mounted
if [ $(mount | grep -F "$1" 1> /dev/null 2> /dev/null; echo $?) == "0" ]; then
  echo "Unmounting: $1"
 
  ## lazy unmount
  sudo /bin/umount -l "$LINKNAME"
 
  ## wait 5 seconds to give time to unmount
  sleep 5
 
  ## delete folder
  sudo /bin/rmdir "$LINKNAME"

  ## remove mount call from persistent mount directory
  DELETEFILE=$(grep -l -F "$LINKNAME" $PERMOUDIR/*)
  rm $DELETEFILE
  

else
  echo "Not mounted: $LINKNAME";
fi


