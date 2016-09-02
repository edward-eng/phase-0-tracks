# Client Database

# Ask the user to fill in the information as completely as possible.
# Convert the inputs to the correct data types.
# Store the inputs into variables.
# Print the results to the console so the user can see what he or she has filled in.

puts "Hi, please answer the following questions."

puts "What's your client's name?"
name = gets.chomp

puts "What's your client's age?"
age = gets.chomp.to_i

puts "How many children does your client have?"
children = gets.chomp.to_i

puts "What decor theme has your client chosen?"
decor_theme = gets.chomp

puts "Does your client live in the city?"
residence = gets.chomp

client_info = {name: name, age: age, children: children, decor: decor_theme, city: residence}
p client_info

# Ask user what changes he or she wants to make. (key or none)
# Store the user's response (string) in user_response.
# If 'none'
# - Do nothing.
# Else
# - Change user's response into a symbol.
# - Ask the user what he or she would like to change the value to.
# - Store the change in a new variable called new_value.
# - Reassign new_value to hash.
# Print result.

puts "What would you like to change? (name, age, children, decor, city, or none)"
user_response = gets.chomp

if user_response != "none"
	user_response = user_response.to_sym
	puts "What would you like to change?"
	if user_response == :age
		new_value = gets.chomp.to_i
	elsif user_response == :children
		new_value = gets.chomp.to_i
	else
		new_value = gets.chomp
	end
	client_info[user_response] = new_value
end

p client_info