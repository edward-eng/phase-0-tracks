# Release 0

def add_numbers
	print "Enter integer 1: "
	num1 = gets.chomp.to_i

	print "Enter integer 2: "
	num2 = gets.chomp.to_i
	yield(num1, num2)
end

add_numbers {|int1, int2| puts "#{int1} + #{int2} = #{int1 + int2}"}

# Release 1

grocery_list = ["apple", "potato", "milk"]

student_profile = {name: "Joe", age: 21, enrolled: true}

puts "\ngrocery_list = #{grocery_list}"

puts "\nTest array#each"
puts "==============="

grocery_list.each do |food_item|
	puts "- #{food_item}"
end

puts "\nTest array#map!"
puts "==============="

grocery_list.map! do |food_item|
	puts "- #{food_item}"
	food_item.upcase
end

puts "Updated grocery_list = #{grocery_list}"

puts "\nTest hash#each"
puts "==============="

student_profile.each do |key, value|
	puts "key: #{key}\n"\
		 "value: #{value}\n\n"
end

# Release 2

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
favorite_food = {jeff: "pizza", edward: "crab", mary: "avocado"}

# Do the Thing 1

numbers.delete_if { |x| x < 5 }
p numbers

favorite_food.delete_if { |key, value| value == "avocado"} 
p favorite_food

# Do the Thing 2

numbers = numbers.select { |num| num == 3 || num == 5 || num == 6 }
p numbers

favorite_food = favorite_food.select { |key, value| value == "pizza"}
p favorite_food

# Do the Thing 3

numbers.keep_if { |x| x > 5}
p numbers

favorite_food = favorite_food.keep_if { |key, value| value == "crab"}
p favorite_food

# Do the Thing 4

numbers = numbers.take_while { |x| x < 5}
p numbers

favorite_food = favorite_food.reject { |key, value| key == :mary }
p favorite_food