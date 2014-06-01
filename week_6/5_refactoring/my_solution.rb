# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution

=begin
class CreditCard

	# initialize CreditCard object with a card numbers
	def initialize(card_num)
		@card_num = card_num
		raise ArgumentError.new("Card length is not 16!") if (card_num.to_s.length != 16)
	end

	# define method to check if card is valid or not
	def check_card

		# Convert the card number into integer array
		card_array = @card_num.to_s.split("").map {|n| n.to_i}

		# Check if index is even.  If true, double the element value
		card_array.map!.with_index{|value,index| index % 2 == 0 ? value * 2 : value}

		# Iterate through the integer array.  If value is double digit, add the digits together and add to sum.  Otherwise, add the value to the sum.
		sum = 0
		card_array.each {|num| num > 9 ? sum += ((num/10).floor + num % 10) : sum += num}

		# Check if sum is divisble by 10.  If yes, return true, otherwise return false
		sum % 10 == 0 ? true : false

	end

end

=end



# Refactored Solution

class CreditCard

	def initialize(card_num)
		@card_num = card_num
		raise ArgumentError.new("Card length is not 16!") if (card_num.to_s.length != 16)
	end

	def check_card

		# Convert the card number into an integer array
		card_array = @card_num.to_s.split("").map(&:to_i)

		# Check if index is even.  If true, double the element value
		card_array.map!.with_index{|value,index| index.even? ? value * 2 : value }

		# Check if each value is single digit.  If it isn't, add digits together
		card_array.map! {|num| num >= 10 ? (num/10 + num%10) : num}

		# Returns true if the sum of the array is divisible by 10, else false
		card_array.reduce(:+) % 10 == 0

	end

end


# DRIVER TESTS GO BELOW THIS LINE

def assert
	puts "Assertion Failed!" unless yield
end

# Create card for testing
test_card = CreditCard.new(4563960122001999)
assert { test_card.check_card == true}

# Test 1: Checks that one parameter was passed to new CreditCard object test_card
p test_card.method(:initialize).arity == 1 ? "one parameter passed" : "wrong number of parameters passed"

# Test 2: Checks that the card number has 16 digits
begin
	bad_card = CreditCard.new(123456)
rescue ArgumentError
	puts "Card number is wrong length"
end

# Test 3: Checks that a bad card returns false
invalid_card = CreditCard.new(4408041234567892)
assert { invalid_card.check_card == false }



# Reflection 

# I was able to make improvements on my original code for the validate card challenge from week 5.  The biggest changes I made to the code was to simply complex operations as much as possible and make the code behavior as clear as possible.  I found ways to combine multiple operations into one.  For example, line 60 is a simple operation to sum the array and return true or false for the method in one move, instead of declaring a sum variable and using a separate line to evaluate true or false as in the original solution.  The original solution for this challenge my own refactored solution from last week and yet I was able to refactor the check_card method down to 4 very readable lines.