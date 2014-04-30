# U3.W8-9: 


# I worked on this challenge [with: Jessica Tatham, Jake Huhn].

# 2. Pseudocode

# Define a new method, super_fizzbuzz, that accepts an array of integers as its parameter
# If any of the numbers are divisible by 3, replace with 'fizz' 
# Elsif any of the numbers are divisible by 5, replace with 'buzz' 
# Elsif any of the numbers are divisible by 15, replace with 'FizzBuzz'

# 3. Initial Solution

=begin

# This returned the new string but did not add it to the original array. 
def super_fizzbuzz(our_array)
  new_array = our_array 
  new_array.each do |i| 
    a = i % 3 == 0 
    b = i % 5 == 0 
    c = i % 3 == 0 && i % 5 == 0
    puts case  
    when a then "Fizz" 
    when b then "Buzz" 
    when c then "FizzBuzz" 
    end 
  end 
end 
      


def super_fizzbuzz(our_array)
  our_array.collect! {|x| (x % 15==0) ? "FizzBuzz" : x}
  our_array.collect! {|x| (x %3==0) ? "Fizz" : x}
  our_array.collect! {|x| (x %5==0) ? "Buzz" : x}
end 
 
=end

# 4. Refactored Solution

def super_fizzbuzz(our_array)
  our_array.collect! {|x| (x % 15==0) ? "FizzBuzz" : x}
  our_array.collect! {|x| (x %3==0) ? "Fizz" : x}
  our_array.collect! {|x| (x %5==0) ? "Buzz" : x}
end 


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def random_input_array(base, size)
  (1..size).map { |i| base**(1+rand(15)) }
end

def assert 
  return "Error!" unless yield 
end 

assert { super_fizzbuzz([15, 5, 3, 1]) == ['FizzBuzz', 'Buzz', 'Fizz', 1] } 
assert { super_fizzbuzz(random_input_array(15, 100)) == ["FizzBuzz"]*100 }
assert { super_fizzbuzz([1,2,3]) == [1,2, 'Fizz']


# 5. Reflection 

=begin

Jake and I had a few ideas about how to solve this challenge, but after trying
out a variation of a bunch of ideas, we eventually had to start googling. We found
a way to replace the integer with another element using the map method, but it wasn't
until we found this collect method that the code actually worked. All in all, I am happy
with the way that the code turned out and the pairing went really well.

=end
