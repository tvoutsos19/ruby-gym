#Take the array of people and return an array listing the people and the ammount of likes which match the first persn "Laura".  Example.  [{:name=>"Kevin", :like_count=>1}, {:name=>"Tom", :like_count=>3}, {:name=>"Pat", :like_count=>2}, {:name=>"Raghu", :like_count=>1}, {:name=>"Bob", :like_count=>0}, {:name=>"Mike", :like_count=>3}, {:name=>"Jealni", :like_count=>1}] 
people = [{:name => "Laura", :likes => ["pizza", "cake", "tequila", "apples", "steak"]}, {:name => "Kevin", :likes => ["pizza", "chicken", "pasta", "cerial", "pop"]}, {:name => "Tom", :likes => ["beer", "icecream", "tequila", "apples", "steak"]}, {:name => "Pat", :likes => ["pizza", "cake", "coffee", "garlic", "soda"]}, {:name => "Raghu", :likes => ["pizza", "carbs", "wiskey", "grapes", "oranges"]}, {:name => "Bob", :likes => ["broccoli", "cheese", "bread", "hotdog", "chimchanga"]}, {:name => "Mike", :likes => ["cabbage", "kiwi", "tequila", "apples", "steak"]}, {:name => "Jealni", :likes => ["cookies", "freeFood", "sweets", "candy", "steak"]}]

laura_likes =  people.at(0).fetch(:likes)

like_count = 0 

like_tracker = []
people.each do |person| 
    like_count = 0 
      if person.fetch(:name) != "Laura" 
        laura_likes.each do |like|
          if person.fetch(:likes).count(like) == 1
            like_count = like_count + 1
          end
        end
      like_count_per_person = {:name => person.fetch(:name), :like_count => like_count}
      like_tracker.push(like_count_per_person)
    end
end

p like_tracker

