# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

=begin
def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }
=end

# 2. Pseudocode what happens when the code above runs

# => Declare an "assert" method
# => Raise an error unless...
# =>  ... Check and evaluate the block


# 3. Copy your selected challenge here
# => Week 5 Challenge 3: Guessing Game


class GuessingGame
  def initialize(answer)
    @cor_answer = answer
  end
  
  def guess(guess)
  	@guess = guess

  	case 
  	when @guess < @cor_answer then :low
  	when @guess > @cor_answer then :high
  	when @guess == @cor_answer then :correct
  	end
  end

  def solved?
  	@guess == @cor_answer
  end

end



# 4. Convert your driver test code from that challenge into Assert Statements

def assert
	raise "Assertion failed!" unless yield
end

# Create new game with answer 50
game_test = GuessingGame.new(25)

p assert { game_test.guess(100) == :high }
p assert { game_test.guess(10) == :low }
p assert { game_test.guess(25) == :correct }
p assert { game_test.guess(30) == :low }


# 5. Reflection

# This challenge was straightforward.  It was fairly simple to convert driver test code into assert statements as the big difference was the form of the code.  Once you understand how the yield keyword works (goes into the block and executes code there before returning to the assert method) it isn't difficult to use.  I will be looking for ways to group tests together with the assert/yield method so that I can be more efficient in writing test code.
