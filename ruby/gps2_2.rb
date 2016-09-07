# GPS2.2 - Solo Attempt

# Method to create a list
# input: hash, string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split the string up into individual strings and store them in an array
  # iterate thru the array and set the quantity of each item to 0
  # then store the items and their respective quanities (0) in a hash
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] the output should be a hash that contains each item with a quantity of 0

# Empty Grocery List
grocery_list = {}

def print_list(grocery_list)
	grocery_list.each do |item, quantity|
		puts "#{item}: #{quantity}"
	end
end

# print_list Method Test
# print_list(grocery_list)

def create_list(grocery_list, items)
	separate_items = items.split(' ')
	separate_items.each do |item|
		grocery_list[item] = 0
	end
	# print the list to the console [can you use one of your other methods here?]
	print_list(grocery_list)

	# Output Test
	# p grocery_list
end

# create_list Method Test
# create_list(grocery_list, "carrots apples cereal pizza")

# Method to add an item to a list
# input: hash, item name, and optional quantity
# steps: take in a hash, an item, and an optional quantity as parameters
# add the item and its optional quantity to the hash
# output: the output should be an updated hash that includes the item and its quantity

def add_item(grocery_list, wanted_item, optional_quantity = 0)
	grocery_list[wanted_item] = optional_quantity

	# Output Test
	# p grocery_list
end

# add_item Method Test
# add_item(grocery_list, 'grape', 5)

# Method to remove an item from the list
# input: hash, item
# steps: find the item in the hash and remove it
# output: updated hash with the item removed

def remove_item(grocery_list, unwanted_item)
	grocery_list.delete(unwanted_item)

	# Output Test
	# p grocery_list
end

# remove_item Method Test
# remove_item(grocery_list, 'apples')

# Method to update the quantity of an item
# input: hash, item, quantity
# steps: find the item in the hash and update the quantity of that item
# output: updated hash with the new quantity of the item

def update_quantity(grocery_list, item, quantity)
	grocery_list[item] = quantity

	# Output Test 
	# p grocery_list
end

# update_quantity Method Test
# update_quantity(grocery_list, 'carrots', 40)

# Method to print a list and make it look pretty
# input: hash
# steps: iterate thru the hash
# print out key/value pairs
# output: a list of the key/value pairs

# Driver Code
create_list(grocery_list, "carrots apples cereal pizza")
add_item(grocery_list, 'Lemonade', 2)
add_item(grocery_list, 'Tomatoes', 3)
add_item(grocery_list, 'Onions', 1)
add_item(grocery_list, 'Ice Cream', 4)
remove_item(grocery_list, 'Lemonade')
update_quantity(grocery_list, 'Ice Cream', 1)
print_list(grocery_list)

# Release 4: Reflect

# What did you learn about pseudocode from working on this challenge?

# Pseudocode is very key to saving time and making sure you keep on track with building your program in bite-size pieces so you can check each line of code along the way to see if things are working.

# What are the tradeoffs of using arrays and hashes for this challenge?

# A hash seemed really good for this challenge since we're dealing with a list of items that have their own quantities.

# What does a method return?

# A method returns the last line of code in it. In this challenge we're usually returing the hash.

# What kind of things can you pass into methods as arguments?

# You can pass hashes, strings, and integers into methods as arguments.

# How can you pass information between methods?

# Not sure about this. Still need to clarify this point. After going to office hours, I found out that I can call another method from within another method. But the called method needs to be placed before the method where it's called.

# What concepts were solidified in this challenge, and what concepts are still confusing?

# I feel pretty good about pseudocoding now and defining methods. I also feel a bit better about working with arrays and hashing, particularly iterating through them and also accessing and editing elements within them. I'm still a little bit confused about passing information between methods. After going to office hours, I found out that I can call another method from within another method. But the called method needs to be placed before the method where it's called.



# ========================================
# ========================================
# ========================================
# # GPS2.2 - with Nichole Burton

# # Method to create a list
# # input: string of items separated by spaces (example: "carrots apples cereal pizza")
# # steps:
#   # convert string (input) into hash
#   # (SPLIT into array, use block to iterate through array
#   # insert into hash
#   # set default quantity
#   # print the list to the console [can you use one of your other methods here?]
# # output: hash with key: item, value: quantity for each LI

# def create_list (items)
#   item_array = []
#   item_array = items.split(' ')
#   item_hash = {}
#   item_array.each do |list_item|
#   item_hash[list_item] = 0
#   end
#   item_hash
# end

# # create_list("Carrots, Apples, Peaches")

# # Method to add an item to a list
# # input: item name and optional quantity (string)
# # steps: SPLIT string into array ([val1,val2.TO_I])
# # use the 0th and 1th values of the array to insert into hash as new item
# # output: hash + new item

# # assuming item being added is a new item.
# def add_item (item, optional_quantity = 0)
#   item_hash[item] = optional_quantity
# end

# # Applies to first applicable item found the hash
# # Method to remove an item from the list
# # input: string (key; item)
# # steps:
#   # find the key in the hash
#   # remove the key + value from hash
# # output: hash - item

# def remove_item (item)
#   item_hash[item].delete
# end

# # Method to update the quantity of an item
# # input: string (key; item), int (value; + quantity)
# # steps:
#   # find the key in the hash
#   # update value to be value = quantity
# # output: hash with updated item quantity

# def update_quantity (item, quantity)
#   item_hash[item] = quantity
# end

# # Method to print a list and make it look pretty
# # input: hash
# # steps:
#   # iterate through hash using block
#   # PUTS "#{key} : #{value}"
# # output: human readable list of key + value pairs

# def print_list
#   item_hash.each{ |item, quantity|
#   puts "#{item}: #{quantity}"
#   }
# end

# # Driver Code
# create_list("carrots apples cereal pizza")
# add_item("Lemonade", 2)



# ========================================
# ========================================
# ========================================
# Old Work

# Method to create a list
# input: hash, and string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take user string and split string into individual strings (string#split) and store it in a array
  # iterate through list of items and store each item as a key in a hash with a value of 0
  # iterate through the hash and print each key and value onto the console
# output: return hash of keys(fruits) and values(quanity of fruits) pairs

# def create_list(hash, user_input)
# 	groceries = user_input.split(' ')
# 	groceries.each {|item| hash[item] = 0 }
# 	hash.each do |item, quantity| 
# 		puts "#{item}: #{quantity}"
# 	end
# end

# # Method to add an item to a list
# # input: hash, item name and optional quantity
# # steps: 
#   # take the item (string) and the quantity and append it into the hash
# # output: return hash of updated keys and values
# def add_item(hash, food_item, optional_quantity)
# 	hash.merge!(food_item => optional_quantity)
# end

# # Method to remove an item from the list
# # input: hash and item name
# # steps:
#   # use hash#delete method to remove item from hash
# # output: return updated hash with item removed
# def remove_item(hash, food_item)
# 	hash.delete(food_item)
# 	return hash
# end

# # Method to update the quantity of an item
# # input: hash, item name, and new quantity
# # steps:
#   # find the key in the hash and reassign it its new value.
# # output: return updated hash with item quantity updated
# def update_quantity(hash, food_item, new_quantity)
# 	hash[food_item] = new_quantity
# end

# # Method to print a list and make it look pretty
# # input: hash of fruits
# # steps:
#   # print a string saying "Here's your fruit list"
#   # iterate through the hash and print each key and value as "#{fruit}: #{quantity}"
# # output: return hash of key and value pairs
# def display_list(hash)
# 	puts "\n___ Here's your fruit list ___"
# 	hash.each do |fruit, quantity|
# 		puts "#{fruit}: #{quantity}"
# 	end
# end

# grocery_list = Hash.new

# # Release 3: Test your solution

# puts "Create a new list"
# puts create_list(grocery_list, "")
# puts "\n"

# puts "Add the following items to your list"
# add_item(grocery_list, "Lemonade", 2)
# add_item(grocery_list, "Tomatoes", 3)
# add_item(grocery_list, "Onions", 1)
# add_item(grocery_list, "Ice Cream", 4)
# puts grocery_list
# puts "\n"

# puts "Remove the Lemonade from your list"
# remove_item(grocery_list, "Lemonade")
# puts grocery_list
# puts "\n"

# puts "Update the Ice Cream quantity to 1"
# update_quantity(grocery_list, "Ice Cream", 1)
# puts grocery_list
# puts "\n"

# puts "Print out your list (Is this readable and nice looking)?"
# display_list(grocery_list)

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