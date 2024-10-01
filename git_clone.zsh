#!/bin/bash

# Default values for user.name and user.email
DEFAULT_USER_NAME="himanshu07Rai"
DEFAULT_USER_EMAIL="raihimanshu22345@gmail.com"

# Check if the correct number of arguments are passed (repository_url and directory_name are required)
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <repository_url> <directory_name> [user_name] [user_email]"
    exit 1
fi

# Assign arguments to variables
REPO_URL=$1
DIR_NAME=$2
USER_NAME=${3:-$DEFAULT_USER_NAME}  # Use default if user_name is not provided
USER_EMAIL=${4:-$DEFAULT_USER_EMAIL}  # Use default if user_email is not provided

# Clone the repository
echo "Cloning repository from $REPO_URL ..."
git clone "$REPO_URL" "$DIR_NAME"

# Change to the repository directory
cd "$DIR_NAME" || exit

# Set the Git user.name and user.email for this repository
echo "Setting user.name to $USER_NAME and user.email to $USER_EMAIL ..."
git config user.name "$USER_NAME"
git config user.email "$USER_EMAIL"

# Verify the settings
echo "Verifying the Git user configuration:"
git config --get user.name
git config --get user.email

echo "Repository cloned and user details set successfully."