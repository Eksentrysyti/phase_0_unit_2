# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode
# => Create BoggleBoard class
# => Create initialize method with one parameter that accepts a nested array
# => Recreate #create_word, #get_row, #get_col methods from last week's challenge
# => 	Methods can use the instance variable and do not need to be passed the array



# 3. Initial Solution
class BoggleBoard

	def initialize(board)
		@board = board
	end

	attr_reader :board
 
	def create_word(*coords)
		coords.map { |coord| @board[coord.first][coord.last]}.join("")
	end

	def get_row(row)
		@board[row]
	end

#get_col was modified from last week to use the #transpose method
	def get_col(col)
		@board.transpose[col]
	end
 
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)

for counter in 0..3 
	puts boggle_board.get_row(counter).join("")
end

for counter in 0..3
	puts boggle_board.get_col(counter).join("")
end

=begin
	*expected outputs:
	brae
	iodt
	eclr
	take
	biet
	roca
	adlk
	etre
=end


# 4. Refactored Solution

# The initial solution does not need refactoring (most of it is refactored code from last week).  The only new code are the lines to print out each row and column.  They are as concise as I can get the code without writing a completely new method to display them.




# 1. DRIVER TESTS GO BELOW THIS LINE

# create driver test code to retrieve a value at a coordinate here:

# Access an individual value at row index 3, col index 2 using an attr_reader accessor
p boggle_board.board[3][2] #=> "k"

# implement tests for each of the methods here:

def assert
	puts "Assertion failed" unless yield
end

assert { boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock"}
assert { boggle_board.get_row(2) == ["e", "c", "l", "r"] }
assert { boggle_board.get_col(1) == ["r", "o", "c", "a"] }

# 5. Reflection 

# This challenge is an extention of last week's boggle board challenge.  Instead of having all the methods act upon a declared array, this week changed those methods to apply to an new object that is created from the declared array.  The new trick I learned this challenge was creating an accessor to instance variables.  In trying to retrieve a single coordinate, I realized we have never been asked to return an instance variable outside of a class method.  I had to do a little research to figure out how to declare an accessor to retrieve an instance variable.











