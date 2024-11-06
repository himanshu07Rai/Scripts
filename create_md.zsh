// create folder and a markdown file
create_folder_and_markdown() {
    local folder_name=$1
    local markdown_file="$folder_name/$folder_name.md"

    # Step 1: Create the folder
    if [ -d "$folder_name" ]; then
        echo "Folder '$folder_name' already exists."
    else
        mkdir "$folder_name"
        echo "Folder '$folder_name' created successfully."
    fi

    # Step 2: Create the .md file inside the folder
    if [ -f "$markdown_file" ]; then
        echo "Markdown file '$markdown_file' already exists."
    else
        touch "$markdown_file"
        echo "Markdown file '$markdown_file' created successfully."
    fi
}

# Check if an argument is passed
if [ $# -eq 0 ]; then
    echo "Usage: $0 folder_name"
else
    create_folder_and_markdown $1
fi