#!/bin/bash
#
# There are functions to check params and print errors into the STDERR (&2)


function print_err {
	case $1 in
	1) echo "Скрипт принимает 6 параметров: [Абсолютный путь (/opt/test)] [Количество вложенных папок (1-99)] [Латинские буквы в названии папок, не более 7 (a-z)] [Количество вложенных файлов (1-99)] [Латинские буквы в названии файлов, не более 7 для имени, не более 3 для расширения (a-z.a-z)] [Размер файлов в килобайтах, но не более 100 (3kb)]" >&2;;
	2) echo "Некорректный абсолютный путь" >&2;;
	3) echo "Некорректный абсолютный путь" >&2;;
	4) echo "Некорректный абсолютный путь" >&2;;
	esac
	
}


function check_number_of_params {
	output=1
	if [[ $1 != 6 ]]
	then
		print_error "1"
		echo "0"
	else
		echo "1"
	fi
}
