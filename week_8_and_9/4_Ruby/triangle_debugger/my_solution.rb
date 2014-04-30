# U3.W8-9: Triangle Debugger


# I worked on this challenge [by myself].


# 1. Original Solution
=begin
def valid_triangle?(a, b, c)
  sum = a+b+c
    if a != 0 && b != 0 && c != 0
      if a >= b
        largest = a
        sum += b
      else 
        largest = b
        sum += a
      end

      if c > largest
        largest = c
        sum += c
      else 
        sum += largest
      end

      if sum > largest
        true
      else 
        false
      end

    else 
      false
    end
end
=end

# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error?
  # The first bug is that the the method expects 4 arguments, but the testing
  # only inputs 3 arguments.
# * what is the exact line number the error is appearing?
  # Within the method, this error is on line 9.
# * before you fix the bug, what do you think is causing the error?
  # What is causing this error is the number of arguments defined in the method need to be 
  # inputted in the testing, or vice versa.

# --- Bug 2 ---
# * what is the exact description of the error?
  #The second error is that the method should return false if one of the inputed
  #arguments is a 0.
# * what is the exact line number the error is appearing?
  #Line 11
# * before you fix the bug, what do you think is causing the error?
  #What is causing the error is that the code in line 11 is using the Or operator.
  # I believe that if we switch those to And operators, it will fix the code.
  # After working with the code, you also have to get rid of the return "false"
  # on line 34 and just use else false.
# --- Bug 3 ---
# * what is the exact description of the error?
  # The error is that the code doesn't return false when the triangle is not valid.
# * what is the exact line number the error is appearing?
  #Line 46 in the rspec testing.
# * before you fix the bug, what do you think is causing the error?
  #I think the main problem is all of the if/else statments. I believe that
  # somewhere along the way, the input is getting mixed up with the changing of
  #the variable, largest, and it's not passing the code correctly.

# 3. Refactored Solution (Comment the other code to run this)

def valid_triangle?(a, b, c)
  if (a>0 && b>0 && c>0) && ((a <= b+c) && (b <= a+c) && (c <= a+b))
    return true
  else
    return false
  end
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

puts valid_triangle?(2,2,2)

puts valid_triangle?(0,2,2)

puts valid_triangle?(25,25,31)

puts valid_triangle?(3,4,5)

puts valid_triangle?(1,1,20)




# 5. Reflection 
=begin
Truthfully, I think I did this challenge completely wrong. The directions said
for me to debug the 3 error messages, but when I ran the rspec testing, there were
  only the 6 failed tests, with the main error message being the wrong number of arguments.
  I also tried creating driver code and running the method on that, but after fixing
  the wrong number of arguments error, no error messages popped up. So I just went about
  solving the challenge by fixing the problems to get the code to work one by one and then 
  eventually just refractoring the code down to something much more readable and user friendly.
  I plan to check back in later this week and see if anyone else chose to work through this challenge
  and see what they came up with.
=end