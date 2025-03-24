#!/bin/bash
echo "Enter file/directory to back up:"
read source
echo "Enter backup location:"
read backup
cp -r "$source" "$backup"
echo "Backup of $source created at $backup" >> script.log
