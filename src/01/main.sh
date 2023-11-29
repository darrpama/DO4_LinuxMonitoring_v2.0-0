#!/bin/bash

source check.sh

if [ $# -eq 6 ]
then
	absolute_path=$1
	number_of_subfolders=$2
	folder_letters=$3
	number_of_files=$4
	file_letters=$5
	file_size=$6

	check_args $absolute_path $number_of_subfolders $folder_letters $number_of_files $file_letters $file_size 

else
	print_err 0
	exit 1
fi
