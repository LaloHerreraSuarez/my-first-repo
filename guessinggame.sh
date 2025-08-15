#!/bin/bash
# guessinggame.sh

# Count the actual number of files
filecount=$(ls -1 | wc -l)

# Function to run the guessing game
function guessinggame {
    echo "Can you guess how many files are in the current directory?"
    read response

    while [ "$response" -ne "$filecount" ]; do
        if [ "$response" -lt "$filecount" ]; then
            echo "Too low! Try again:"
        else
            echo "Too high! Try again:"
        fi
        read response
    done

    echo "Correct! Well done — there are exactly $filecount files. Game over."
}

# Run the game
guessinggame