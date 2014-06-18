# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself.


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
  # Create a list of letters from a to z inclusively and convert to array
    alphabet = ('a'..'z').to_a
  # Rotate the alphabet array by 4 indexes, then use #zip to create a two dimensional array and convert to a hash.
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
  # Specified characters are placed into an array named "spaces"
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
  # Downcase the original sentence
    original_sentence = sentence.downcase
  # Create new Array for encoded_sentence
    encoded_sentence = []
  # For each character in the sentence...
    original_sentence.each_char do |element|
  # ... check if it is in the cipher...
      if cipher.include?(element)
        # ... if it is, replace with the rotated value...
        encoded_sentence << cipher[element]
      elsif element == ' '
        # ... else if element is white space, replace with random symbol from spaces array
        encoded_sentence << spaces.sample
      else 
        # ... else keep the character as is
        encoded_sentence << element
      end
     end
    
    # Return the decoded sentence
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing?
# => .to_a converts the range specified into an array
# 2. How does the rotate method work? What does it work on?
# => The #rotate method works on arrays.  It shifts elements by the specified number of places.
# 3. What is `each_char` doing?
# => #each_char iterates over every one character, including whitespace
# 4. What does `sample` do?
# => #sample returns a random element in the array
# 5. Are there any other methods you want to understand better?
# 6. Does this code look better or worse than your refactored solution of the original cipher code? What's better? What's worse?
# => This code looks cleaner than my refactored solution.  It is much easier to read and requires fewer lines of code.  The shortcuts in creating the spaces and cipher arrays make for less typing work.  I like that both solutions used the #include? method to find characters.  The general solution is the same, though this solution has some other shortcuts to do the same logic with less typing.
# 7. Is this good code? What makes it good? What makes it bad?
# => I think this is good code since it is easy to read and is very easy to understand the purpose and process of each command.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?  No, since the white space is replaced by a randomly selected element from the spaces array.
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")


# 5. Reflection

# This was an exciting challenge to see that there are so many other methods that can be used to refactor and simplify code.  I had thought my solution was fairly good in logic was refactored to be as simple and concise as possible, but it turns out with some other shortcuts and methods, that it could be refactored even further.

