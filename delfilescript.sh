#!/bin/bash

echo -n "Введите путь к директории: "
read -e DELSCRIPT

if [ -d $DELSCRIPT ]
 then
  echo "Директория найдена"
  cd $DELSCRIPT
  echo "Удаление файлов .bak, .tmp, .backup"
  rm -v *.bak *.tmp *.backup
  echo "Удаление выполнено"
 else
  echo "Указанная директория не найдена"
  exit 2
fi