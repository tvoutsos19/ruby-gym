# We have to expect the unexpected — if users can find a way to break our code by navigating through it in a sequence that we didn't predict, they 100% will.

# Suppose that your program has to deal with the object inside the variable some_random_input, starting on Line 18. If the object is:

# a String: downcase it and print
# a Time: figure out the day of the week, downcased, and print
# an Integer: figure out whether it's odd or even and print
# a Symbol: downcase it and print
# nil: print "no object provided"
# true: print "you may pass"
# false: print "you may not pass"
# a Hash: print the list of keys within the Hash, as an Array.


unpredictable_inputs = [
  "Hello!",
  Time.now,
  rand(100),
  :GOODBYE,
  nil,
  true,
  false,
  { :city => "Chicago", :state => "IL", :zip => 60654 }
]

some_random_input = unpredictable_inputs.sample

p some_random_input

# Write your code below

