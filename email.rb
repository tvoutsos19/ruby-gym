#Write a progam that allows a user to enter in a name.  If the name is in the list of people return the email address, not not return, "That person isn't in our list"

people = [{:name => "Patrick", :email => "patrick@email.com"}, {:name => "Jelani", :email => "Jelani@email.com"}, {:name => "Raghu", :email => "Raghu@email.com"}, {:name => "Neal", :email => "Neal@email.com"}, {:name => "Karen", :email => "Karen@email.com"}, {:name => "Shannon", :email => "Shannon@email.com"}, ]

searching_for = gets.chomp.gsub(/\s+/, "").capitalize 

output = nil 

people.each do |person|
    if person.fetch(:name) == searching_for
        p output = person.fetch(:email)
        return 
    else
        output = "That person isn't in our list"
    end
end
 p output 