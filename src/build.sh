#!/bin/sh
#
#
# ###############################


os=`uname`

me="`/usr/bin/whoami`"

echo $os

if [ $me != "root" ]
then
    echo "[error]:u need su root to run this script!!"
    exit 1
fi

make -f Makefile clean

if [ $os = "Linux" ]
then
	echo it seem to be a linux
	make -f Makefile
elif [ $os = "SunOS" ]
then
	echo it seems to be a solaris
	make -f Makefile
else
	echo it seems to be a other:$os
	make -f Makefile
fi

echo ""
echo "==============================================="
echo "===========VetoClient build finished!=========="
echo "==============================================="
