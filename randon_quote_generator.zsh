#!/bin/zsh

# Fetch a random quote from an API
quote=$(curl -s https://api.quotable.io/random | jq -r '.content')

echo "Here's a random quote for you:"
echo "$quote"