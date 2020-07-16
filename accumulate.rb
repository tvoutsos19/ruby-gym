# This program will start by asking you the questions, "Are we there yet?"

# Your task is to complete the code so that each answer you enter is recorded into an array, and once you have finally answered "yes", the program will print the array. 

# Note: all the recorded answers should be lowercase

p "Are we there yet?"

answer = gets.chomp.downcase
while answer != "yes"
  p "Are we there yet?"
  
  answer = gets.chomp.downcase
end