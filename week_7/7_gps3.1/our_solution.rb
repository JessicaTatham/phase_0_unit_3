# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Devin Johnson
# 2. Jessica Tatham
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to be able to add items with a quantity to my list.
# As a user, I want to be able to delete items with a quantity to my list.
# As a user, I want to be able to view items by a section, or view the entire list.
# As a user, I want to be able to check off items once purchased.
 
# Pseudocode
# Create class, grocery_list.
# Define initialize method.
#   Within the initialize method, create instance variable, @list, set it to a hash 
#   containing predefined grocery departments as keys and empty arrays as value.
# Define method, add_item, with parameters name, quantity, section.
#   Using section argument as key value, we'll add name and quantity into the value array.
# Define method, delete_item, with parameters, name. 
#   Find the item and delete it. 
# Define method, view_list, with paramenter with default value, section.
#   If an argument is passed, view that section, if not, view entire list.
#

 
# Your fabulous code goes here....
class GroceryList
  def initialize
    @list = {"Meat" => [], "Fruit" => [], "Vegetables" => [], "Bakery" => []}
  end
  
  def add_item(food_item)
    @list[food_item.section] << food_item
  end
  
  def delete_item(food_item)
    @list[food_item.section].delete(food_item)
  end
  
  def view_list(section = "all")
    if section == "all"
      @list.each do |section,items|
        puts "#{section} section:"
        items.each do |food|
            puts "#{food.name}"
        end
      end 
    else
        puts "#{section} section:"
        @list[section].each do |food|
            puts "#{food.name}"
        end
    end
  end
end

class Food
  attr_reader :name, :qty, :section
  def initialize(name, qty, section)
    @name = name
    @qty = qty
    @section = section
  end
end


# DRIVER CODE GOES HERE. 
shoppingList = GroceryList.new

apple = Food.new('apple', 2, "Fruit")
steak = Food.new('steak', 1, "Meat")
cake = Food.new('cake', 1, "Bakery")
tomato = Food.new('tomato', 3, "Vegetables")
cucumber = Food.new('cucumber', 2, "Vegetables")

shoppingList.view_list

shoppingList.add_item(apple)
shoppingList.add_item(steak)
shoppingList.add_item(cucumber)
shoppingList.add_item(tomato)
shoppingList.add_item(cake)

shoppingList.view_list
shoppingList.delete_item(cucumber)

shoppingList.view_list("Vegetables")


# Reflect
=begin
I really enjoyed this challenge! I came into the GPS with a vary simplistic 
code as a solution for the challenge, and Devin came to the GPS with a very 
complicated idea, but I feel as if we managed to find a good middle ground
with the solution. I really liked that we got to work with hashes in our 
grocery list. I didn't feel very confident with hashes and which methods to use
with them, but after this challenge, I feel much more confident with them! Devin
was very patient with me while I had to ask him to keep on explaining what he 
was doing and why he was doing it. I'm hoping that now that I have some good 
experience using hashes that I will feel better about using them in future challenges.

=end