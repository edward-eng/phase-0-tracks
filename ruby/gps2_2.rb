# Method to create a list
# input: hash, and string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take user string and split string into individual strings (string#split) and store it in a array
  # iterate through list of items and store each item as a key in a hash with a value of 0
  # iterate through the hash and print each key and value onto the console
# output: return hash of keys(fruits) and values(quanity of fruits) pairs

def create_list(hash, user_input)
	groceries = user_input.split(' ')
	groceries.each {|item| hash[item] = 0 }
	hash.each do |item, quantity| 
		puts "#{item}: #{quantity}"
	end
end

# Method to add an item to a list
# input: hash, item name and optional quantity
# steps: 
  # take the item (string) and the quantity and append it into the hash
# output: return hash of updated keys and values
def add_item(hash, food_item, optional_quantity)
	hash.merge!(food_item => optional_quantity)
end

# Method to remove an item from the list
# input: hash and item name
# steps:
  # use hash#delete method to remove item from hash
# output: return updated hash with item removed
def remove_item(hash, food_item)
	hash.delete(food_item)
	return hash
end

# Method to update the quantity of an item
# input: hash, item name, and new quantity
# steps:
  # find the key in the hash and reassign it its new value.
# output: return updated hash with item quantity updated
def update_quantity(hash, food_item, new_quantity)
	hash[food_item] = new_quantity
end

# Method to print a list and make it look pretty
# input: hash of fruits
# steps:
  # print a string saying "Here's your fruit list"
  # iterate through the hash and print each key and value as "#{fruit}: #{quantity}"
# output: return hash of key and value pairs
def display_list(hash)
	puts "\n___ Here's your fruit list ___"
	hash.each do |fruit, quantity|
		puts "#{fruit}: #{quantity}"
	end
end

grocery_list = Hash.new

# Release 3: Test your solution

puts "Create a new list"
puts create_list(grocery_list, "")
puts "\n"

puts "Add the following items to your list"
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
puts grocery_list
puts "\n"

puts "Remove the Lemonade from your list"
remove_item(grocery_list, "Lemonade")
puts grocery_list
puts "\n"

puts "Update the Ice Cream quantity to 1"
update_quantity(grocery_list, "Ice Cream", 1)
puts grocery_list
puts "\n"

puts "Print out your list (Is this readable and nice looking)?"
display_list(grocery_list)

# Release 5: Reflect

# What did you learn about pseudocode from working on this challenge?

# Pseudocode really helps to break down a challenge into bite-sized pieces so that you can write simple and readable code. Plus, it allows you to test your code bit by bit as you move through the solution to the challenge.

# What are the tradeoffs of using arrays and hashes for this challenge?

# Using a hash seemed to be good for this challenge since we wanted to add items AND quantities to a list. So using a hash seemed to simplify the process of creating the list.

# What does a method return?

# A method returns the last line of code in the method. In this case, we're returning an updated hash after we run each method.

# What kind of things can you pass into methods as arguments?

# You can pass in things like hashes, strings, and integers into arguments.

# How can you pass information between methods?

# You can use instance variables.

# What concepts were solidified in this challenge, and what concepts are still confusing?

# I clarified what a method is returning. I also better solidified defining methods and calling them. I'm still a little shaky on the syntax and usage of hashes and arrays; moreso with hashes, though.