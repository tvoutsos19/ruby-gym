# Write a program that: 
#   asks the user to enter a sentence.
#   then finds the number of times 'the' appears in the given string
#   prints, 'the' appeared x times

p "Enter a sentence:"

sentence = gets.chomp.gsub(/[^a-z0-9\s]/i, "")

p "'the' appeared " + sentence.split.count("the").to_s + " times"
