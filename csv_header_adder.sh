#!/bin/bash

#adds a header to the beginning of all the csv files in a directory

echo Enter the path to the header file:

read headerpath

echo Enter the path to the directory holding the csv files to append:

read csvdirpath

cd $csvdirpath


for csvfile in ./*.csv
do
	echo $csvfile
	sed '$a\' $headerpath $csvfile > temp.csv
	cat temp.csv > $csvfile
	
done

rm temp.csv
	