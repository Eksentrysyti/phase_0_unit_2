# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode


# Initial Solution

def create_word(board, *coords)
  coords.map { |coord| board[coord.first][coord.last]}.join("")
end


# Refactored Solution

# The above solution is copied from the challenge page.


# DRIVER TESTS GO BELOW THIS LINE

puts create_word(boggle_board, [2,1], [2,2], [3,3], [2,3], [3,2])  #=> returns "clerk"

# Reflection 

# I did a search on the map method to refresh my memory on what it does.  The way I understood this piece of code is that the map method takes each set of coords given (* means that it is unknown how many coords there will be and says that it can take any number of parameters given), retrieve the letter stored at the position of the nested array, and join it to whatever string is already created.

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# => Create a method get_row that takes two parameters (board to be used and the row number)
# => Return the nested array that is at that row number

# Initial Solution

def get_row(board, row)
	board[row]
end

# Refactored Solution

# The initial solution does not need to be refactored.  It simply returns the array located at the indicated row of the specified board

# DRIVER TESTS GO BELOW THIS LINE

# Test 1: Return the values of the specified row
p get_row(boggle_board, 1) == ["i", "o", "d", "t"]

# Reflection 

#This part of the challenge was extremely simple once I understood what I needed to accomplish.  While it looked daunting at first, I realized it was simply asking to return the nested array at the specified array location.


<<<<<<< HEAD
#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# => Create a method get_col that takes two parameters (board to be used and the column number)
# => Return the value at the column number for each row in an array

# Initial Solution

=begin

def get_col(board, col)
	col_array = Array.new
	board.each {|row| col_array << row[col]}
	return col_array
end

=end


# Refactored Solution

# Implemented map method to simplify solution

def get_col(board, col)
	board.map{|row| row[col]}
end


# DRIVER TESTS GO BELOW THIS LINE

p get_col(boggle_board, 1) == ["r", "o", "c", "a"]


# Reflection 

# This challenge required a little more thought than part 2 since I couldn't just return the nested array found at a row index.  The initial solution outlines the though process in that I just needed to iterate through each line and put whatever I found at the column index into an array, which is then returned.  Upon refactoring, I thought I could use the map method I learned in part 1 to return the array in one go without the need to create a placeholder array and then return it all in one simple move.
=======
>>>>>>> upstream/master
