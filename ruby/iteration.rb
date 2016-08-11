# # Release 0

# def add_numbers
# 	print "Enter integer 1: "
# 	num1 = gets.chomp.to_i

# 	print "Enter integer 2: "
# 	num2 = gets.chomp.to_i
# 	yield(num1, num2)
# end

# add_numbers {|int1, int2| puts "#{int1} + #{int2} = #{int1 + int2}"}

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