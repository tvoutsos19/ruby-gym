# You plan to roll a die.
# Ask the user for a guess at what number the die will land on.
# Then generate a random dice roll (a number between 1 and 6)
#  if the User guessed right, congratulate them. If they didn't, shame them.

# Hint: use the rand method for the dice roll.

p "Enter a guess:"

guess = gets.chomp.to_i

roll = rand(0..6)

if roll == guess
  p "Congratulations! You guessed correctly!"
else
  p "Shame on you. The die landed on #{roll}"
end
