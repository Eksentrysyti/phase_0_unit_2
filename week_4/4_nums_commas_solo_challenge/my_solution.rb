# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? An integer
# What is the output? (i.e. What should the code return?) Same integer, but with commas separating the digits correctly
# What are the steps needed to solve the problem?
# => Create method separate_comma that takes an integer input
# => Convert integer into string, then make a character array
# => Reverse the array, then insert a "," after every 3rd element
# => Reverse the array again, then convert back to string and display


# 2. Initial Solution

=begin
def separate_comma(num)
	string = String.new
	num_array = num.to_s.reverse.split("")
	num_array.each_slice(3) {|x|  string << x.join + ","}
	string[0...-1].reverse
end

p separate_comma(1234567890)
=end


# 3. Refactored Solution

def separate_comma(num)
	string = String.new
	num.to_s.reverse.split("").each_slice(3) {|x|  string << x.join("") + ","}
	p string[0...-1].reverse!
end

p separate_comma(1234567890)

# 4. Reflection

# This challenge was a fun logic exercise.  The pseudocode was key in doing this challenge as I had to figure out what methods I could use to progress to the solution.  I had to look up or refresh my memory on methods such as #split, #slice, and #join.  