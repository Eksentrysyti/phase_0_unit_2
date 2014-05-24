# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:  16 digit credit card number
# Output: true if valid card number, false if invalid card number
# Steps:
# => Create class CreditCard and initialize with single card number parameter
# => Create method check_card with the following algorithm:
# =>	Convert each digit into a string, then back into an integer and store into an array
# => 	Double every odd element in the array, if result is greater than 10, then add digits together
# => 	Add all digits in the array, then divide by 10
# => 	If result is 0, return true, otherwise return false


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits

=begin
class CreditCard

	def initialize(card_num)
		@card_num = card_num
		if (card_num.to_s.length != 16)
			raise ArgumentError.new("Card length is not 16!")
		end
	end

	def check_card
		#convert the card number into an integer array (card_array)
		card_array = []
		card_array = @card_num.to_s.split("").map {|n| n.to_i}
		#double the value of each odd index
		card_array.map!.with_index{|value,index| index % 2 == 0 ? value * 2 : value}
		#check each value of card_array and adds the digits together if greater than 0
		card_array.map! {|num|
			if num > 9
				(num/10).floor + num % 10
			else
				num
			end
		}
		#add all digits in array together
		sum = 0
		card_array.each{|value| sum += value}
		#check to see if the sum is divisible by 0 and returns true or false
		sum % 10 == 0 ? true : false

	end

end

=end

# 4. Refactored Solution

class CreditCard

	def initialize(card_num)
		@card_num = card_num
		#modified to a single line if statement to be a single line statement
		raise ArgumentError.new("Card length is not 16!") if (card_num.to_s.length != 16)
	end

	def check_card

		#removed redundant explicit card_array declaration
		card_array = @card_num.to_s.split("").map {|n| n.to_i}

		card_array.map!.with_index{|value,index| index % 2 == 0 ? value * 2 : value}

		#iterates through the array and adds each number to the sum (if it finds a double digit numb, it will add the digits together first)
		sum = 0
		card_array.each {|num| num > 9 ? sum += ((num/10).floor + num % 10) : sum += num}

		sum % 10 == 0 ? true : false

	end

end

# 1. DRIVER TESTS GO BELOW THIS LINE


# Create card for testing
good_card = CreditCard.new(1234567890123456)

# Test 1: Checks that one parameter was passed to new CreditCard object test_card
p good_card.method(:initialize).arity == 1 ? "one parameter passed" : "wrong number of parameters passed"

# Test 2: Checks that the card number has 16 digits
begin
	bad_card = CreditCard.new(123456)
rescue ArgumentError
	p "Card number is wrong length"
end

# Test 3: Checks that a bad card returns false
bad_card_2 = CreditCard.new(4408041234567892)
p bad_card_2.check_card == false ? "good, bad card caught" : "bad card wasn't caught!"





# 5. Reflection 

# This challenge was more challenging that any of the others this week.  I had to do extensive research on methods and refresh old ones to get this to work.  Some examples of methods I'd never used or rarely used were .split and .with_index.  Iterating through the array to double each even indexed element was tricky in that Ruby doesn't have a way to be specific on how to iterate the way that C language can increment a for loop by 2 (i.e. for(i=0; i<16; i+2)).  I had to dig through similar questions people had on StackOverflow and eventually found the .with_index method.  Once I passed each hurdle and created an initial solution that passed the tests, I went back and looked carefully at how I could refactor some code I knew looked ugly.  The refactored code looks simpler and uses fewer lines, though some portions may still look gnarly (i.e. line 79).  This is currently to the best of my ability until I can perhaps find some methods that would work.
