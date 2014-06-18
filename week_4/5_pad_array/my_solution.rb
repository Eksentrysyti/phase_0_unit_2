# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input? The min size of the output array, and an optional padding value
# What is the output? (i.e. What should the code return?) An array that is at least the size of the input array.  Any added values will be the specified padding value or nil if not specified
# What are the steps needed to solve the problem?
# => Create #pad method that takes up to 2 parameters
# => Check the length of the input array and compare to required array size
# => Take the difference and add padding values to the end of the array to match required array size
# => Adapt #pad to #pad!


# 2. Initial Solution

class Array

	def pad!(min_size, padding_value = nil)
		difference = min_size - self.count
		difference.times { self << padding_value } if difference > 0
		self
	end

	def pad(min_size, padding_value = nil)
		self.clone.pad!(min_size, padding_value)
	end

end

p [1, 2, 3, 4, 5].pad(7)
p [1, 2, 3].pad(7, "test")

p [1, 2, 3, 4, 5, 6].pad!(9)
p [1, 2, 3].pad!(8, "test2")



# 3. Refactored Solution

# Solution is clean and does not need refactoring.

# 4. Reflection 

# This challenge took a bit of time to figure out how to differentiate between #pad and #pad!  I had to do more research on the difference between destructive and non-destructive methods and eventually found that I could use the #clone method to create a non-destructive version of my method.