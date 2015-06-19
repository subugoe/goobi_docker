#!/bin/sh

cd $1

for i in `ls -d */`;
  do
#    /bin/bash /san/goobi/goobi/Scripte/iii.sh write_tiffheader `pwd`/$i
    /bin/bash /opt/digiverso/goobi/scripts/iii.sh write_tiffheader `pwd`/$i
  done
