#!/bin/bash
echo "Enter directory path:"
read dir
ls -lh "$dir"
echo "Listed files in $dir" >> script.log
