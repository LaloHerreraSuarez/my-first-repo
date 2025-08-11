#!/bin/bash
# filecount.sh

echo "Can you guess how many files are in the current directory?"
read response

# Count the actual number of files
filecount=$(ls | wc -l)

echo "Correct! There are $filecount files."