#!/bin/bash
echo "Enter file/directory to compress:"
read source
tar -czf "${source}.tar.gz" "$source"
echo "Compressed $source to ${source}.tar.gz" >> script.log
