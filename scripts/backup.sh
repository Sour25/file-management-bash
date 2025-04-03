#!/bin/bash

# Function to create a backup
create_backup() {
    # Ask for the file or directory to back up
    read -p "Enter the path of the file or directory to back up: " source_path

    # Check if the source exists
    if [ ! -e "$source_path" ]; then
        echo "Error: The specified file or directory does not exist!"
        exit 1
    fi

    # Ask for the backup location
    read -p "Enter the backup destination path: " backup_location

    # Ensure the backup location exists, create it if not
    if [ ! -d "$backup_location" ]; then
        mkdir -p "$backup_location"
        echo "Backup directory created: $backup_location"
    fi

    # Generate timestamp
    timestamp=$(date +"%Y%m%d_%H%M%S")

    # Extract the name of the file or directory
    backup_name=$(basename "$source_path")

    # Create a compressed backup
    tar -czvf "$backup_location/${backup_name}_backup_$timestamp.tar.gz" "$source_path"

    echo "Backup completed successfully!"
    echo "Backup saved to: $backup_location/${backup_name}_backup_$timestamp.tar.gz"
}

# Execute the function
create_backup

