#!/bin/bash

arg1=$1
arg2=$2

if [ "$arg1" -eq "$arg2" ]
then
	echo both number are equal
elif [ "$arg1" -gt "$arg2" ]
then
	echo "$arg1 is greater than $arg2"
else
	echo "$arg2 is greater than $arg1"
fi

