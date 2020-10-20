# Write a program to play a variety of BlackJack.
# The program should ask the user to input two numbers separated by a space, and it should print their sum.
# 
# Here's the catch: 
#  if the sum is greater than 21, return 0, unless one of the numbers is 11. 
#  In such a case, the 11 should be 'converted' to a 1 to prevent the sum from being exceeded.
# 
# For example, given a 11 and 13 as input, the 11 should be 'converted' into a 1 so the total sum will be 14.

p "Enter two number separated by spaces:"

numbers = gets.chomp.split
fnumb = numbers.at(0).to_i
snumb = numbers.at(1).to_i

if fnumb + snumb < 22
  p fnumb + snumb
elsif fnumb + snumb >21 and fnumb == 11 or snumb == 11
  p fnumb + snumb - 10
else 
  p 0
end

