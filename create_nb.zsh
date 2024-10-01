#!/bin/zsh

# Function to create folder and .ipynb file
create_folder_and_notebook() {
    local folder_name=$1
    local notebook_file="$folder_name/$folder_name.ipynb"

    # Step 1: Create the folder
    if [ -d "$folder_name" ]; then
        echo "Folder '$folder_name' already exists."
    else
        mkdir "$folder_name"
        echo "Folder '$folder_name' created successfully."
    fi

    # Step 2: Create the .ipynb file inside the folder
    if [ -f "$notebook_file" ]; then
        echo "Notebook '$notebook_file' already exists."
    else
        # Create the basic structure of an empty .ipynb file
        touch "$notebook_file"
        echo "Notebook '$notebook_file' created successfully."
    fi
}

# Check if an argument is passed
if [ $# -eq 0 ]; then
    echo "Usage: $0 folder_name"
else
    create_folder_and_notebook $1
fi
