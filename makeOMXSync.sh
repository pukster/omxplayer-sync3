#!/bin/bash

# To understand what is going on here read the README.SYNC file        #
# 
# Delete install folder if it is still there
if [ -d omxplayer-dist ]
then
   rm -fr omxplayer-dist
fi

# Delete compressed file if it is still there
if [ -f omxplayer-dist.tar.gz ]
then
   rm -fr omxplayer-dist.tar.gz
fi

# Delete ffmpeg folder if it exists (remove later)
#if [ -d ffmpeg ]
#then
#   rm -fr ffmpeg
#fi

# Remeber that the Makefile has been altered to expect the RASPI       #
# variable. Technically you only have to compile it once (on account   #
# of all raspis being identical), but for completeness, you can choose #
# to compile it specifically for every machine.                        #
RASPI=raspi1
export RASPI

#make ffmpeg > make.ffmpeg.log 2>&1

if [ $? -eq 0 ]
then
   make > make.log 2>&1
else
   echo Make Failed
   exit -1
fi

if [ $? -eq 0 ]
then
   make dist > make.dist.log 2>&1
   echo Make Dist Failed
   exit -1
fi

if [ $? -eq 0 ]
then
   for RASPI in raspi1 #raspi2 raspi4 raspi5 raspi6
   do
      export RASPI
      
      sudo rsync --progress -a omxplayer-dist/* /mnt/CYBRAN/$RASPI/ 
   done
else
   echo Something Failed
fi
