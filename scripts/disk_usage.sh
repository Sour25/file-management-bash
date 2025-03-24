#!/bin/bash
echo "Enter directory:"
read dir
du -sh "$dir"
echo "Checked disk usage for $dir" >> script.log
