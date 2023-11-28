#!/bin/bash
#
# There are functions to check params and print errors into the STDERR (&2)


function print_err() {
	case $1 in
	0) echo "Входные параметры: [Абсолютный путь (/opt/test)] [Количество вложенных папок (1-99)] [Латинские буквы в названии папок, не более 7 (a-z)] [Количество вложенных файлов (1-99)] [Латинские буквы в названии файлов, не более 7 для имени, не более 3 для расширения (a-z.a-z)] [Размер файлов в килобайтах, но не более 100 (3kb)]" >&2;;
	1) echo "Первый входной параметр должен быть абсолютным путём." >&2;;
	2) echo "Второй входной параметр (количество вложенных папок) должен быть числом от 1 до 99." >&2;;
	3) echo "Третий входной параметр (буквы в названии папок) должен состоять из латинских букв числом от 1 до 7." >&2;;
	4) echo "Четвёртый входной параметр (количество вложенных файлов) должен быть числом от 1 до 99." >&2;;
	5) echo "Пятый входной параметр (латинские буквы в названии файлов, не более 7 для имени, не более 3 для расширения (a-z.a-z)) записан неправильно." >&2;;
	6) echo "Шестой входной параметр (размер файлов в килобайтах) должен быть числом от 1 до 99." >&2;;
	esac
}
