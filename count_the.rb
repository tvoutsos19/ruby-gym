# Write a program that: 
#   asks the user to enter a sentence.
#   then finds the number of times 'the' appears in the given string
#   and finally prints, "'the' appeared x times", where x is an Integer

p "Enter a sentence:"

sentence = gets.chomp.split

list = Array.new

sentence.each do |exam|
  if exam.include?("the") and exam.length<=4
    list.push("the")
  end
end

number = list.count("the")

p "'the' appeared " + number.to_s + " times"
