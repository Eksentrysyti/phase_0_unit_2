# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:  16 digit credit card number
# Output: true if valid card number, false if invalid card number
# Steps:
# => 


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard

end



# 4. Refactored Solution






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
CreditCard.new(4408041234567892) == false ? "good, bad card caught" : "bad card wasn't caught!"






# 5. Reflection 
