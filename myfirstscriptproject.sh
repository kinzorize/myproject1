#! /bin/bash

 mkdir ./hot-folder

for myfile in *;
do
	if [ -f "$myfile" ]; then

		#echo "$myfile"

		#grep -ni "spo" "$myfile"
		check=$(grep -ni "spo" "$myfile")
		if [ -z "$check" ]; then
			echo "EMPTY"
		else
			echo "HOT FILE !!! FOUND!"
			cp "$myfile" ./hot-folder
			echo " " >> hot-folder/"$myfile"
			echo "************" >> hot-folder/"$myfile"
			echo "$check" >> hot-folder/"$myfile"
		fi
	else
		echo "$myfile is NOT a file... "
		echo " "
	fi
echo "-------------------------------------------------"

done 
