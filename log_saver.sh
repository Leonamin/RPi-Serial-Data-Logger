#!/bin/bash
LOG_DIR='/log/'

date=`date +'%Y-%m-%d'`
cnt=1

file_num=$( printf '%03d' $cnt )

file_name=$date-$file_num

file_path=$LOG_DIR$file_name

while true;
do
if [ -e $file_path ]; then
	cnt=$(($cnt+1))
	file_num=$( printf '%03d' $cnt )
	file_name=$date-$file_num
	file_path=$LOG_DIR$file_name
else
	`touch $file_path`
	break
fi
done

printf "Last File Name: %s\n" $file_path

`stty -F /dev/ttyS0 9600 cs8 -cstopb -parenb`

while true;
do
`stdbuf -o0 cat /dev/ttyS0 >> $file_path`
done
