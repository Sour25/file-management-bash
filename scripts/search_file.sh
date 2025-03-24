#!/bin/bash
echo "Enter directory:"
read dir
echo "Enter filename or extension (e.g., *.txt):"
read name
find "$dir" -name "$name"
echo "Searched for $name in $dir" >> script.log
