# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: numbers of sides for the die
# Output: returns the number of sides for the die and a random number within the range of sides
# Steps: 
# 2.1 Create Class Die that initializes with the sides parameter given
# 2.2 Define sides method of Die that returns the sides paramenter given
# 2.3 Define roll method of Die that returns a random number between 1 and <number of sides>


# 3. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
  end
  
  def sides
    return @sides
  end
  
  def roll
    # code goes here
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

puts Die.instance_method(:initialize).arity == 1
puts die.sides + "<-Should be same as the number of sides initialized"
puts die.roll + "number must be less than or equal to numbers of sides initialized"




# 5. Reflection 