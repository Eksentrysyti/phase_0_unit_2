# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

#declare method total
#create array of numbers
#iterate through the array to add all the numbers
#return the sum

#declare method sentence_maker
#create array of strings
#capitalize first element in array
#output all strings in a sentence with a period at the end


# 2. Initial Solution

def total(array)
	sum = 0
	array.each { |x| sum += x}
	puts sum
end

def sentence_maker(array)
	array[0].capitalize!
	array.each { |x| print "#{x} "}
	print "."
end

total([1,2,3,4,5])

sentence_maker(["hello", "world", "this", "is", "a", "test"])

# 3. Refactored Solution

#The initial solution was concise and I don't see any lines I would like to refactor.  The total method uses a single iterator to add each element to a sum variable, which is then returned (printed to screen for testing).  The sentence_maker method first capitalizes the first element in the array, then using another iterator, prints each element to screen.  It then finally adds the period at the end.

def total(array)
	sum = 0
	array.each { |x| sum += x}
	puts sum
end

def sentence_maker(array)
	array[0].capitalize!
	array.each { |x| print "#{x} "}
	print "."
end


# 4. Reflection 

#For this challenge, making a simple psuedocode and following it carefully made this challenge easy.  I plotted out exactly what needed to be done, recognizing the details of the required output (such as capitalized first word of the sentence_maker method) and coded following these guidelines.  Aside from a few initial syntax errors, I didn't face any problems.

#For this challenge, I needed the .each iterator method.  I used the CodeAcademy resource we needed to complete before phase 0 to refresh my memory on the syntax.

#At this point, I'm still getting used to using the command line to commit and push files.  Practicing committing after every release is helping greatly to get used to using it.

#No new tricks at this time.

#I'm fairly confident in the learning competencies since it is mostly stuff we learned during the pre-phase 0 tutorial work.

#I enjoyed coding in ruby, as it is what I've been looking forward to doing for this program (I'm less enamored with HTML, CSS, and Javascript at this point).

#The only slightly tedious point of the challenge is committing after every release.  Once I get more accustomed to it however, it should be like breathing.