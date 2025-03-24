#!/bin/bash
echo "Enter directory:"
read dir
count=$(ls -1 "$dir" | wc -l)
echo "Number of files: $count"
echo "Counted $count files in $dir" >> script.log
