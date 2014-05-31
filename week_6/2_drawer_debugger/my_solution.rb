# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer

	attr_reader :contents

# Are there any more methods needed in this class? No

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing? #pop returns the last item in the array
		@contents.delete(item)
	end

	def dump  # what should this method return? Returns an empty array
		puts "Your drawer is empty."
		@contents = []
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end

end

class Silverware
	attr_reader :type

# Are there any more methods needed in this class? Yes, added clean_silverware

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

# New method added to clean silverware
	def clean_silverware
		puts "cleaned the #{type}"
		@clean = true
	end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents

sharp_knife = Silverware.new("sharp_knife")
silverware_drawer.add_item(sharp_knife)
silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? An empty list

fork = Silverware.new("fork")
silverware_drawer.add_item(fork)
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
fork.clean_silverware

# DRIVER TESTS GO BELOW THIS LINE

test_drawer = Drawer.new

def assert
	puts "Assertion Failed" unless yield
end

assert {
	p "Start Driver Test Code"
	soup_spoon = Silverware.new("spoon")
	test_drawer.add_item(soup_spoon)
	p test_drawer.add_item(Silverware.new("salad fork"))
	test_drawer.view_contents
	test_drawer.remove_item == nil
	test_drawer.view_contents
	test_drawer.remove_item == nil
}



# 5. Reflection 

# I felt comfortable reading error messages and correcting bugs.  Usually the error's line number will tell you which line may have the error, but since it may not know where classes/methods "end", it was up to me to realize that the drawer class didn't have an "end" (which because immediately obvious once I finished indenting the code).  Writting assert test code was a little trickier, but I just need more practice to get the full hang of it.