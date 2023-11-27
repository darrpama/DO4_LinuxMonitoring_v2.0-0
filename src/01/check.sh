#!/bin/bash                                                                                                  

function check_args() {
  if [[ ! -d "$1" ]]; then
    err "Первый входной параметр должен быть абсолютным путём."
    exit 1
  fi

  if [[ $2 -lt 1 ] || [ $2 -gt 100 ]]; then
    err "Второй входной параметр (количество вложенных папок) должен быть числом от 1 до 99."
    exit 1
  fi

  if [[ $3 =~ ^[a-zA-Z]{1,7}$ ]]; then
    err "Третий входной параметр (буквы в названии папок) должен состоять из латинских букв числом от 1 до 7."
    exit 1
  fi

  if [[ $4 -lt 0 ] || [ $4 -gt 100 ]]; then
    err "Четвёртый входной параметр (количество вложенных файлов) должен быть числом от 1 до 99."
    exit 1
  fi

  if [[ $5 =~ ^[a-zA-Z]{1,7}[.][a-zA-Z]{1,3}$ ]]; then
    err "Пятый входной параметр (латинские буквы в названии файлов, не более 7 для имени, не более 3 для расширения (a-z.a-z)) записан неправильно."
    exit 1
  fi

  if [[ $6 -lt 1 ] || [ $6 -gt 100 ]]; then
    err "Шестой входной параметр (размер файлов в килобайтах) должен быть числом от 1 до 99."
    exit 1
  fi

  if [[]]; then
    err "Входные параметры: [Абсолютный путь (/opt/test)] [Количество вложенных папок (1-99)] [Латинские буквы в названии папок, не более 7 (a-z)] [Количество вложенных файлов (1-99)] [Латинские буквы в названии файлов, не более 7 для имени, не более 3 для расширения (a-z.a-z)] [Размер файлов в килобайтах, но не более 100 (3kb)]"
    exit 1
  fi

}
