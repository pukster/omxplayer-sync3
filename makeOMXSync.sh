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

# Delete ffmpeg folder if it exists
# Once you know it compiles correctly, you can comment this out
#if [ -d ffmpeg ]
#then
#   rm -fr ffmpeg
#fi

# Delete make log file if it exists
if [ -d make.log ]
then
   rm -fr make.log
fi

# Delete make ffmpeg log file if it exists
# Once you know it compiles correctly, you can comment this out
#if [ -d make.ffmpeg.log ]
#then
#   rm -fr make.ffmpeg.log
#fi

# Delete make dist log file if it exists
if [ -d make.dist.log ]
then
   rm -fr make.dist.log
fi

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
   echo Make ffmpeg Failed
   exit -1
fi

if [ $? -eq 0 ]
then
   echo Make Succeeded
else
   echo Make Failed
   exit -1
fi

#Stupid ffmpeg has a file named time.h Hopefully this will fix that
mv ffmpeg_compiled/usr/local/include/libavutil/time.h ffmpeg_compiled/usr/local/include/libavutil/time.h.old
mv ffmpeg/libavutil/time.h ffmpeg/libavutil/time.h.old

if [ $? -eq 0 ]
then
   make dist > make.dist.log 2>&1
else
   echo mv failed
   exit -1
fi

#Stupid ffmpeg has a file named time.h Hopefully this will fix that
mv ffmpeg_compiled/usr/local/include/libavutil/time.h.old ffmpeg_compiled/usr/local/include/libavutil/time.h
mv ffmpeg/libavutil/time.h.old ffmpeg/libavutil/time.h

if [ $? -eq 0 ]
then
   for RASPI in raspi1 #raspi2 raspi4 raspi5 raspi6
   do
      export RASPI
      
      sudo rsync --progress -a omxplayer-dist/* /mnt/CYBRAN/$RASPI/ 
   done
else
   echo Make dist failed
   exit -1
fi
