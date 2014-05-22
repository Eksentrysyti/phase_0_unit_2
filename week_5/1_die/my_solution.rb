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
    if @sides <= 1
  		raise ArgumentError.new("Number of sides must be greater than 1")
  	end
  end
  
  def sides
    return @sides
  end
  
  def roll
    return rand(1..@sides)
  end
end

die = Die.new(10)
puts die.sides
puts die.roll


# 4. Refactored Solution

#The initial solution does not need to be refactored, as all the methods are simple and readable in their purpose.


# 1. DRIVER TESTS GO BELOW THIS LINE

puts Die.instance_method(:initialize).arity == 1
puts Die.instance_method(:roll).arity == 0



# 5. Reflection 

=begin
Starting this challenge simply required reading the instructions and looking up any new concepts/tools that were required for the challenge (i.e. learning about classes and the rand method for ruby's RNG).  My biggest challenge was actually figuring out how to write driver test code for this challenge.

I needed to search up how to generate random numbers, and doing a Google search gave me some surprisingly incoherent or complicated answers for generating numbers in a range.  I finally found a simple way to generate random numbers after a couple links.

I'm still having a bit of trouble writing Driver Test Code, figuring out to access variables in an initialized object.  I will revisit this later.

This challenge showed me how to write simple classes and gave me practice on what limited knowledge I had about classes from before.

I'm fairly comfortable with the learning competencies, although I didn't implement complex if/else statements, string methods, while/until loops for this challenge.

I liked creating a simple class and methods to go with it, it didn't take long to figure out how to do this challenge.

I found creating the driver test code to be tedious as it wasn't clear on what I was supposed to be testing for.  The instructions simply to "pick 3", so I needed to open up the tests file, translate the test code into plain english, and then rewrite it... I found it redundant.	

	
=end