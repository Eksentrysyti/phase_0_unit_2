# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: An integer for user's guess
# Output: Verification if guess is too high, too low, or matches correct answer
# Steps:
# => Create class for game and initialize it with the "correct answer"
# => Define an instance method GuessingGame#guess that takes a single parameter guess
# => Return :high, :low:, or :correct
# => Define an instance method GuessingGame#solved? that returns true if most recent guess was correct and false if not


# 3. Initial Solution

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




# 4. Refactored Solution

# The initial solution will not need to be refactored.  While it's possible to reduce the number of lines of code by changing the case statement to a simple set of return statements, this is a good opportunity to practice using the case control flow tool (may possibly increase performance since when the first case is evaluated to be true, then none of the other when statements are checked and the desired result is returned).



# 1. DRIVER TESTS GO BELOW THIS LINE

# Create new game with answer 50
game_test = GuessingGame.new(50)

# Test 1: Returns :high when guess is too high, then check if solved (false)
p game_test.guess(100) == :high ? "true, too high" : "false, high test failed"
p game_test.solved?

# Test 2: Returns :low when guess is too low, then check if solved (false)
p game_test.guess(25) == :low ? "true, too low" : "false, low test failed"
p game_test.solved?

# Test 3: Returns :correct when guess is correct, then check if solved (true)
p game_test.guess(50) == :correct ? "true, correct" : "false, :correct not returned"
p game_test.solved?


# 5. Reflection 

# I'm finally fairly comfortable going through the steps for this week's challenges (after experimenting and stumbling a bit through the two die challenges).  Writing test code is getting easier and more straightforward to me.  This was a fun challenge to complete.  If I had more time (and perhaps a little more sense of overachieving), I would incorporate a random number generator and a user-side input to truly turn this into a game as shown in the second challenge example.  This is the first time really understanding the necessity of instance variables.  If i were to create another GuessingGame object, I would still be able to access the values for the first guessing game (since it isn't simply a local variable)without getting it overwritten (which would be the case if it were a global variable)
