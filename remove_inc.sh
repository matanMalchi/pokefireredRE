#!/bin/bash

for directory in data/maps/* ; do
	inc_exists=$(find $directory -name $"scripts.inc" | wc -l)
	if [[ $inc_exists -ne 0 ]]; 
	then
		echo "removing: $directory/scripts.inc"
		rm "$directory/scripts.inc"
	fi 	
done
