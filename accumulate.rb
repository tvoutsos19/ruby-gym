# Add some code to this program to, at the end,
#  print the history of answers given while being pestered
#  whether we're there yet.

p "Are we there yet?"

answer = gets.chomp.downcase

while answer != "yes"
  p "Are we there yet?"
  
  answer = gets.chomp.downcase
end
