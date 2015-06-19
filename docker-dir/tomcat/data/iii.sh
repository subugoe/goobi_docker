#!/bin/bash

TOMCATUSER=tomcat
TOMCATGROUP=tomcat

TIFFSET_MAKE="Göttinger Digitalisierungszentrum (GDZ) "
TIFFSET_SOFTWARE="(c) 2010 intranda GmbH"


ACTION=$1
WORKINGPATH=$2


type -P tiffset &>/dev/null || { echo "ERROR: the package libtiff-tools (ubuntu) or tiff (sles) is required but seems not to be installed.  Aborting." >&2; exit 1; }
if [ "$#" != "2" ]; then echo -e "ERROR: You need to specify a path \n \n "; ACTION="path"; fi



if [ "$#" == "2" ]; then /usr/bin/sudo /bin/chown -R $TOMCATUSER:$TOMCATGROUP $WORKINGPATH; fi


cd $WORKINGPATH

case "$ACTION" in 

  write_tiffheader)
    echo "Writing tiff header information to all *.tif files"
    
    if [ "`file ../tiffwriter.conf`" == "../tiffwriter.conf: ISO-8859 text, with CRLF line terminators" ]; then
      echo "File is ISO-8859-1"
      mv ../tiffwriter.conf ../tiffwriter.conf-iso8859-1
      iconv --from-code=iso8859-1 --to-code=utf-8 ../tiffwriter.conf-iso8859-1 > ../tiffwriter.conf
    fi
                              
    if [ "`file ../tiffwriter.conf`" == "../tiffwriter.conf: UTF-8 Unicode text, with CRLF line terminators" ]; then
      for i in `ls *.tif`; do 
        tiffset -s ImageDescription "`grep ImageDescription ../tiffwriter.conf | sed 's/ImageDescription=//g'`" $i 2>&1 >> /dev/null;
        tiffset -s DocumentName "`grep Documentname ../tiffwriter.conf | sed 's/Documentname=//g'`" $i 2>&1 >> /dev/null;
        tiffset -s Artist "`grep Artist ../tiffwriter.conf | sed 's/Artist=//g'`" $i 2>&1 >> /dev/null;
        tiffset -s Make "$TIFFSET_MAKE" $i 2>&1 >> /dev/null;
        tiffset -s Software "$TIFFSET_SOFTWARE" $i 2>&1 >> /dev/null;
        tiffset -s PageName "|${i/.tif/}||" $i 2>&1 >> /dev/null;
      done     
    fi
  ;;

  
  *)
    echo "USAGE:  $0 /PATH/TO/FILES PARAMETER
"
    
echo "use as parameter:
      * write_tiffheader";
      
    ;;
esac

