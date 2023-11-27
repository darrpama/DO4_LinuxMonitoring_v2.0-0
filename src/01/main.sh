#!/bin/bash

source err.sh
source check.sh

if [ $# -eq 6 ]
then
	absolute_path=$1
	number_of_subfolders=$2
	folder_letters=$3
	number_of_files=$4
	file_letters=$5
	file_size=$6

	check_args( absolute_path number_of_subfolders folder_letters number_of_files file_letters file_size )
	create_folders( absolute_path number_of_subfolders folder_letters number_of_files file_letters file_size )
else
	err "Входные параметры: [Абсолютный путь (/opt/test)] [Количество вложенных папок (1-99)] [Латинские буквы в названии папок, не более 7 (a-z)] [Количество вложенных файлов (1-99)] [Латинские буквы в названии файлов, не более 7 для имени, не более 3 для расширения (a-z.a-z)] [Размер файлов в килобайтах, но не более 100 (3kb)]"
	exit 1
fi
