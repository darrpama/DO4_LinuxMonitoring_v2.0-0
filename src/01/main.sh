#!/bin/bash

source err.sh

if [ $# -eq 6 ]
then
	check=$(echo "$1" | grep -E "^\-?[0-9]*\.?[0-9]+$")
	if [ "$check" != '' ]
	then
		err "Один из параметров написан неправильно"
		exit 1
	else
		echo "Всё отлично"
	fi
else
	err "Скрипт принимает 6 параметров:"
	err "main.sh /opt/test 4 az 5 az.az 3kb"
	err "Параметр 1 - это абсолютный путь."
	err "Параметр 2 - количество вложенных папок."
	err "Параметр 3 - список букв английского алфавита, используемый в названии папок (не более 7 знаков)."
	err "Параметр 4 - количество файлов в каждой созданной папке."
	err "Параметр 5 - список букв английского алфавита, используемый в имени файла и расширении"
	err "(не более 7 знаков для имени, не более 3 знаков для расширения)."
	err "Параметр 6 - размер файлов (в килобайтах, но не более 100)."
	exit 1
fi