#!/bin/bash

for i in $( ls $1 ); do
    # dest="/nas100/backups/servers/z/zebra/mysql.tgz"
    # ## get file name i.e. basename such as mysql.tgz
    tempfile="${i##*/}"

    ## display filename
    # echo "filename is '${tempfile%.*}_OUT.txt'"
    echo "Running: './build/program < $i > $2/${tempfile%.*}_OUT.txt'"
    ./build/program < $1/$i > $2/${tempfile%.*}_OUT.txt
done
