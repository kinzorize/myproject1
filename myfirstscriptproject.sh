#! /bin/bash

for myfile in *;
do
	if [ -f "$myfile" ]; then
	echo "$myfile"
	grep -ni "spo" "$myfile"
	else
		echo "$myfile is NOT a file... "
		echo " "
	fi
done 
