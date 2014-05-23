# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Create class Die
# Create initialization method that accepts an array of strings for labels
# => Check that the array/values passed are valid (greater than 1)
# Create a sides method that counts the number of elements in the array
# Create a roll method that returns a random element from the array


# 3. Initial Solution

=begin
class Die
  def initialize(labels)
  	@labels = labels
	
  	raise ArgumentError.new("There are no labels!") if labels.empty?
	
	if labels.length <= 1
		raise ArgumentError.new("There needs to be more than 1 label")
	end
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[rand(@labels.length)]
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
puts die.sides
puts die.roll

=end


# 4. Refactored Solution

# Removed the second exception check as it wasn't deemed necessary

class Die

  def initialize(labels)
  	@labels = labels
  	raise ArgumentError.new("There are no labels!") if labels.empty?
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[rand(sides)]
  end

end

test_die = Die.new(["A", "B", "C", "D", "E"])
puts test_die.sides
puts test_die.roll





# 1. DRIVER TESTS GO BELOW THIS LINE


# Create 6 sided test die


word_die = Die.new(["alpha", "bravo", "charlie", "delta", "echo", "foxtrot"])

# test 1: Check that sides method returns correct number of sides
word_die.sides == 6

# test 2: Check that exception is raised when no parameters passed on initialization
begin
	failed_die = Die.new()
rescue ArgumentError
	puts true
end

# test 3: Check that exception is raised when fewer than 2 parameters passed on initialization
begin
	failed_die_2 = Die.new(["A"])
rescue ArgumentError
	puts true
end


# 5. Reflection 

#This challenge was a few extra steps on top of the 1_die challenge for this week.  Once I understood the differences between this challenge and the first one, it wasn't hard to adapt to finish this challenge.  I did have to do some research to find out how to work with handling the empty array exception but I was able to find a simple answer and finish the challenge.  Once again still trying to gain a better understanding of how to write effective driver test code, but it will be a work in progress.
