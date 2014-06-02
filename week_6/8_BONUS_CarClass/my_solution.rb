# U2.W6: Create a Car Class from User Stories


# I worked on this challenge by myself.


# 2. Pseudocode
# => Create an object class Car with model and color attributes, initialize with 0 speed
# => Create a method to set destination distance
# => Create a method to change car speed
# => Create a method to check car speed
# => Create two methods to turn the car (right and left)
# => Create a method to stop the car



# 3. Initial Solution

class Car

	def initialize(model, color)
		@model = model
		@color = color
		@speed = 0
		@distance_travelled = 0
		@direction = "none"
	end

	def drive(distance, speed = @speed)
		@distance_travelled += distance
		@speed = speed
	end

	def stop
		@speed = 0
	end

	def turn_right
		@direction = "right"
	end

	def turn_left
		@direction = "left"
	end

	def check_speed
		@speed
	end

	def set_speed(speed)
		@speed = speed
	end

	def log_distance
		@distance_travelled
	end


end



# 4. Refactored Solution

# Solution does not need to be refactored.  Each method is necessary according to user stories and are concise.


# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
	puts "Assertion Failed!" unless yield
end

my_car = Car.new("civic", "red")
my_car.drive(0.25, 25)
my_car.stop
my_car.turn_right
my_car.drive(1.5, 35)
assert { my_car.check_speed == 35 }
my_car.set_speed(15)
my_car.drive(0.25)
my_car.stop
my_car.turn_left
my_car.drive(1.4, 35)
my_car.stop
assert { my_car.log_distance == 3.4 }

# 5. Reflection

# This challenge looked intimidating at first, but once driver tests were written from user stories, the pseudocode was easy to write out and it was easy to figure out what methods were required for the class.  One new thing I tried out was using optional parameters for the #drive method.  I had never used the convention before, but it was convenient to be able to choose a default value if a parameter was not explicitly set.