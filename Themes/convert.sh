#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage convert.sh <Theme-Folder>"
    exit 1
fi

THEME=$1
PNG2C=../png2c/png2c
THEME_HDR=$THEME.h

echo "/* Generated on '`date`' */" > $THEME_HDR
echo -e "\n#pragma once\n" >> $THEME_HDR
for i in `ls $THEME/*.png`; do
    HFILE=`dirname $i`/`basename $i .png`.h
    echo $HFILE
    $PNG2C $i $HFILE

    echo "#include \"$HFILE\"" >> $THEME_HDR
done
echo "" >> $THEME_HDR

echo "Generated $THEME_HDR"

