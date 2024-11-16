#!/bin/bash

# Function to count files in the current directory
count_files() {
  echo $(ls -1 | wc -l)
}

# Main program
echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Get the correct number of files
correct_count=$(count_files)

# Loop to keep asking until the correct guess
while true; do
  # Prompt user for their guess
  read -p "Enter your guess: " guess

  # Check if the guess is correct
  if [[ $guess -eq $correct_count ]]; then
    echo "Congratulations! You guessed the correct number of files!"
    break  # Exit the loop if the guess is correct
  elif [[ $guess -lt $correct_count ]]; then
    echo "Your guess is too low. Try again!"
  else
    echo "Your guess is too high. Try again!"
  fi
done
