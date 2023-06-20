Урок 4. Скрипты Bash
Задание:
- Написать скрипт очистки директорий. На вход принимает путь к директории. Если директория существует, то удаляет в ней все файлы с расширениями .bak, .tmp, .backup. Если директории нет, то выводит ошибку.

cat > delfilescript

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
  echo "Указанная директория не найдена."
  exit 2
fi

bash delfilescript


- Создать скрипт ownersort.sh, который в заданной папке копирует файлы в директории, названные по имени владельца каждого файла. Учтите, что файл должен принадлежать соответствующему владельцу.

#!/bin/bash

directory=$1

if [ ! -d $1 ]
then
echo "Not a directory."
exit 0
fi

for file in $(ls $directory)
directoryowner=$(ls -la $directory/$file | awk '{print $3}')
test ! -d $owner && mkdir $owner &&chown $owner:$owner $owner
then
mkdir $owner
chown $owner:$owner $owner
fi
cp -p $directory/$file $owner
chown $owner:$owner $owner/$file 
done 