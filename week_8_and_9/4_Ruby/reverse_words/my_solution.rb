# U3.W8-9: Reverse Words


# I worked on this challenge [by myself].

# 2. Pseudocode



# 3. Initial Solution
=begin
def reverse_words(sentence)
	sentence.reverse
end

=end
# 4. Refactored Solution

def reverse_words(sentence)
	sentence.split(' ').map {|word| word.reverse}.join(' ')
end

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

p reverse_words("Hello") == "olleH"

p reverse_words("Hakuna Matata") #== "anukaH atataM"

p reverse_words("") == ""

p reverse_words("How are you") #== "woH era uoy"



# 5. Reflection 
=begin
	
I found this to be a relatively easy challenge. My first solution was a little too simplified, and only worked when I wanted to reverse one 
word or an empty string. My final solution, I just had to loop through the sentence to reverse each word separately. I didn't have to research
any methods for this challenge, but I did have to take a look into others solutions to remember to use the split and join method to make the 
solution work exactly right.
	
=end

