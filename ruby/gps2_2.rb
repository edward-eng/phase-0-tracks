# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take user string and split string into individual strings (string#split) and store in a array
  # iterate through list of items and store each item as a key in a hash with a value of 0
  # iterate through the hash and print each key and value onto the console
# output: return hash of keys(fruits) and values(quanity of fruits) pairs
def create_list(grocery_items)
  groceries = grocery_items.split(' ')
  grocery_list = Hash.new
  groceries.each {|item| grocery_list[item] = 0 }
  grocery_list.each do |item, quantity| 
  	puts "#{item}: #{quantity}"
  end
end

puts create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  # take the item (string) and the quantity and append it into the hash
# output: return hash of updated keys and values

# Method to remove an item from the list
# input: item name
# steps:
  # use hash#delete method to remove item from hash
# output: return updated hash with item removed

# Method to update the quantity of an item
# input: item name, new quantity
# steps:
  # find the key in the hash and reassign it its new value.
# output: return updated hash with item quantity updated

# Method to print a list and make it look pretty
# input: hash of fruits
# steps:
  # print a string saying "Here's your fruit list"
  # iterate through the hash and print each key and value as "#{fruit}: #{quantity}"
# output: return hash of key and value pairs