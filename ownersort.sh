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