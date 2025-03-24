#!/bin/bash
while true; do
    echo "Choose an option:"
    echo "1) List files"
    echo "2) Backup files"
    echo "3) Count files"
    echo "4) Check disk usage"
    echo "5) Search for files"
    echo "6) Compress files"
    echo "7) Exit"
    read choice
    
    case $choice in
        1) bash scripts/list_files.sh ;;
        2) bash scripts/backup.sh ;;
        3) bash scripts/count_files.sh ;;
        4) bash scripts/disk_usage.sh ;;
        5) bash scripts/search_file.sh ;;
        6) bash scripts/compress.sh ;;
        7) exit ;;
        *) echo "Invalid option" ;;
    esac
done
