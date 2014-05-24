# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input? An array of values
# What is the output? (i.e. What should the code return?) The median of the values
# What are the steps needed to solve the problem?
# => Define a median method that takes a single argument Array
# => Sort the array
# => 	If odd number of elements, returns the middle element
# => 	If even number of elements, returns the average of the two middle elements


# 2. Initial Solution

=begin
def median(array)
	array.sort!
	if array.length % 2 != 0
		array[(array.length/2)]
	else
		( array[(array.length/2 - 1)].to_f + array[(array.length/2)].to_f )/2
	end 

end
=end

# 3. Refactored Solution

# I didn't like the messy expression on line 27 so I focused on that for the refactor.  I wanted to remove the if-else statement, but realized I couldn't do so if I wanted to make the code work for an odd element string array.  I changed it to a ternary statement instead.

def median(array)
	array.sort!
	len = array.length
	len % 2 == 0 ? ( array[(len-1)/2] + array[(len/2)] ) / 2.0 : array[(len/2)]

end

# 4. Reflection 

# This was an easy challenge in terms of methods and syntax used.  I just needed to think about how to average the two middle elements in the array for even numbered arrays.  Once that was done, I only needed to write out an initial solution that worked, and then refactor it.