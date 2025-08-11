#!/bin/bash
# guessinggame.sh

# Function guessinggame
function guessinggame {
    # Loop until the guess is correct
    while [ "$response" -ne "$filecount" ]; do
        if [ "$response" -lt "$filecount" ]; then
            echo "Too low! Try again:"
        else
            echo "Too high! Try again:"
        fi
        read response
    done
}

echo "Can you guess how many files are in the current directory?"
read response

# Count the actual number of files
filecount=$(ls | wc -l)

# Call the function with the user's input
guessinggame "$response"

echo "Correct! There are $filecount files."