# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: Title, Person/place/topic, date, thesis statement
# Output: Template with above inputs
# Steps:
# => Create method essay_writer that takes in all inputs
# => Output inputs within template


# 3. Initial Solution

=begin
def essay_writer(title, topic, date, thesis_statement)
	puts "#{title}"
	puts ""
	puts "#{topic} played an important role in history in the year #{date}.  #{thesis_statement}  #{topic} would be remembered and studied in years to come."
end
=end


# 4. Refactored Solution

def essay_writer(title, topic, date, thesis_statement)
	puts "#{title}\n\n"
	puts "#{topic} played an important role in history in the year #{date}.  #{thesis_statement}  #{topic} would be remembered and studied in years to come."
end

# 1. DRIVER TESTS GO BELOW THIS LINE

essay_writer("America's First President", "George Washington", 1776, "He was the leader of the colonist armies fighting for independence against the British.  He then became the first president of the United States of America.")

puts "\n"

essay_writer("The End of the War to End All Wars", "World War Two", 1945, "This year marked the end of the greatest war in the history of mankind.")

puts "\n"

essay_writer("Attack on America", "The 9/11 bombings", 2001, "These attacks brought down the Twin Towers in New York and damaged the Pentagon.")


# 5. Reflection 

# This challenge was simple once you realize you simply needed to plug in values into a template.  The tricky part was creating a template that was general enough to encompass a variety of topics to be used.


