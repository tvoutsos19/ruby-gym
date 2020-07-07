# Write a program that prints the earned points of a single toss of a Darts game.

# Darts is a game where players throw darts to a target.

# In our particular instance of the game, the target rewards with 4 different amounts of points, depending on where the dart lands.

# If the dart lands:
#  outside the target: 0 points.
#  in the outer circle of the target: 1 point.
#  in the middle circle of the target: 5 points.
#  in the inner circle of the target: 10 points.
#  The outer circle has a radius of 10 units (This is equivalent to the total radius for the entire target), the middle circle a radius of 5 units, and the inner circle a radius of 1. They are all centered to the same point (That is, the circles are concentric) defined by the coordinates (0, 0).

# Write a program that asks for a point in the target
#  (defined by its real Cartesian coordinates x and y),
#  prints the correct amount earned by a dart landing in that point.

# The outer circle of the target looks a little like:
#        (10, 0)
#           - 
#       -       -
#    -             -
# (-10, 0)         (10, 0)
#    -             -
#       -       -
#           -
#         (-10, 0)
        
p "Enter X,Y coordinates in the format 'X,Y'"

coordinates = gets.chomp.split(",")

x = coordinates.first.to_f
y = coordinates.last.to_f

circle = x ** 2 + y ** 2

if circle > 25 && circle <= 100
  p "1 points"
elsif circle > 1 && circle <= 25
  p "5 points"
elsif circle <= 1
  p "10 points"
else
  p "0 points"
end

