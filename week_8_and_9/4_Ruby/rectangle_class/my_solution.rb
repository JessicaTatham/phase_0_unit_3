# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
Define the method area that calculates the area by multiplying width by height.
Define the method perimeter that calculates the parimeter by multiplying the width by 2 and the height by 2 and adding them together.
Define the method diagonal that calculates the diagonal by finding the square root of height squared plus the width squared.
Define the method square? that determines whether the rectangle is a square or not by checking if the width is equal to the height.
=end
# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end

  def area
  	@width*@height
  end

  def perimeter
  	@width*2+@height*2
  end

  def diagonal
  	(@width ** 2 + @height ** 2) ** 0.5
  end

  def square?
  	@width == @height
  end

end




# 4. Refactored Solution

#I don't see a way to refactor this code.




# 1. DRIVER TESTS GO BELOW THIS LINE

rectangle = Rectangle.new(5,10)
square = Rectangle.new(5,5)

p rectangle.area
p rectangle.perimeter
p rectangle.diagonal
p rectangle.square?
p square.area
p square.perimeter
p square.diagonal
p square.square?




# 5. Reflection 
=begin
I found this to be a very straight forward challenge. Defining each of the methods wasnt difficult and translating the 
Rspec was simple. I did have to look up how to find the diagonal as my basic geometric measurements class failed me in 
high school!

=end