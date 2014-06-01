# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself.

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order of the flavors coming up.


# 2. Pseudocode
# => Define the PezDispenser class
# =>   PezDispenser must allow to be initialized with an array of flavors
# => Define a method to count number of pez left in the dispenser (pez_count)
# => Define a method to remove the top pez to eat (get_pez)
# => Define a method to add a pez to the bottom of the dispenser (add_pez)
# => Define a method to display all pez in order (see_all_pez)


# 3. Initial Solution

class PezDispenser

	def initialize(flavor_array)
		@flavor_array = flavor_array
	end

	def pez_count
		@flavor_array.count
	end

	def see_all_pez
		@flavor_array
	end

	def get_pez
		@flavor_array.shift
	end

	def add_pez(new_pez)
		@flavor_array.push(new_pez)
	end
 
end
 


# 4. Refactored Solution

# => Initial solution does not need to be refactored.  Each method executes its stated function cleanly with a single array method call and return.


# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
	puts "Assertion Failed!" unless yield
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!" 

assert { super_mario.pez_count == 9 }

puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"

assert { super_mario.pez_count == 10}

puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

assert { super_mario.pez_count == 9 }



# 5. Reflection 

# This challenge was great practice in writing my own ruby classes and methods based on user stories.  It was not a difficult challenge, though I did check through resources to look for array methods that could use to concisely created the get_pez method (#shift fit the objective perfectly). Writing out the pseudocode was very helpful in determining what I needed to do.