#!/bin/bash

echo "enter the name of the directory:"
read dir
mkdir $dir && cd $dir

echo enter the custom dir name

read custdir

for ((i=$1; i<=$2; i++))
do
	mkdir "${custdir}${i}"
done
