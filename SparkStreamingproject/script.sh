#!/bin/bash
streaming_dir="/home/ahmed/Downloads/simple/data"
while [ 1 ]
do
	mylogfile="mylogfile_$(date +%s).csv"
	./log-generator.py >> $mylogfile
	mv $mylogfile ${streaming_dir}/
	echo "$mylogfile is generated"
	sleep 5
done	
