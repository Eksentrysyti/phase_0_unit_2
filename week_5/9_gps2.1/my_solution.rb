# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Steven Leu
# 2) Brian Junio

 # This is the file you should end up editing. 
 
 # define method bakery_num accepting two arguments "number of people" and "favorite food"
def bakery_num(num_of_people, fav_food)
    
 # create hash of foods (keys: food, values: number of people fed) and initialize quantities of each food
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0

  # did away with iteration, combined it all with a Hash#has_key? method.
  raise ArgumentError.new("You can't make that food") unless my_list.has_key?(fav_food)
  

  # fav_food_qty will be assigned 8, 6, or 1
    fav_food_qty = my_list[fav_food]
    
    if num_of_people % fav_food_qty == 0
        return "You need to make #{num_of_people / fav_food_qty} #{fav_food}(s)."
    else
        if fav_food == "pie"
            pie_qty = num_of_people / my_list["pie"]
            num_of_people = num_of_people % my_list["pie"]
            cake_qty = num_of_people / my_list["cake"]
            cookie_qty = num_of_people % my_list["cake"]
        else
            cake_qty = num_of_people / my_list["cake"]
            cookie_qty = num_of_people % my_list["cake"]
        end

        return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
end
 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
p bakery_num(25, "cake") == "You need to make 0 pie(s), 4 cake(s), and 1 cookie(s)."
# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
# Raise AE error
p bakery_num(3, "apples") # this will raise an ArgumentError
 

#  Reflection
# This was a difficult challenge to work through but Brian and I solved it methodically and was able to arrive at a suitable conclusion.  This challenge was pretty fun refactoring and cleaning up code.  We dicovered that the driver test code missed an important case where cake was preferred but the number of people was enough to add pies AND that there would be leftover cookies (as tested by the "broken" test code we were originally given).  The solution we came up with to handle this problem is NOT an optimal solution and could be refactored further.  It is also not easily expandable to include new food items.  If I have time, I would look at lines 25 through 39 and look for a way to call up just the items that appear after a certain key and rewrite the method to calcuate the quantities needed.
# Brian was great to work with and contributed ideas and checked work to make this solution pass all the tests.  He is friendly and respectful and very productive to work with.



