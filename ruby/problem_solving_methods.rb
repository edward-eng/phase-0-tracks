# Write a method that takes in two parameters.
# The first parameter is a an array of integers.
# The second parameter is a number that you want to search for.
# Set a loop counter to 0.
# While the loop counter is less than the length of the array, continue to loop through the array.
# If the number in the array is the same as the target number, return the index of that number.
# Otherwise, return nil.
# Increment the loop counter by 1.

arr = [42, 89, 23, 1]

def search_array(numbers, target)
	index = 0
	while index < numbers.length
		if numbers[index] == target 
			return index
		else
			nil
		end
		index += 1
	end
end

p search_array(arr, 42)
p search_array(arr, 89)
p search_array(arr, 23)
p search_array(arr, 1)
p search_array(arr, 100)
p search_array(arr, 200)