# Write a method that takes in two parameters.
# The first parameter is a an array of integers.
# The second parameter is a number that you want to search for.
# Set a loop counter to 0.
# While the loop counter is less than the length of the array, continue to loop through the array.
# If the number in the array is the same as the target number, return the index of that number.
# Otherwise, return nil.
# Increment the loop counter by 1.

# arr = [42, 89, 23, 1]

# def search_array(numbers, target)
# 	index = 0
# 	while index < numbers.length
# 		if numbers[index] == target 
# 			return index
# 		else
# 			nil
# 		end
# 		index += 1
# 	end
# end

# p search_array(arr, 42)
# p search_array(arr, 89)
# p search_array(arr, 23)
# p search_array(arr, 1)
# p search_array(arr, 100)
# p search_array(arr, 200)

# Write method that takes one parameter.
# The parameter should be how long the Fibonacci is.
# Start out with an array of 0 and 1.
# Add numbers to the array until the length of the array equals the number of the parameter.
# Add the 0 and 1 and store the result in the array.
# Check to see how many numbers are in the array.
# If the amount of numbers in the array equals the number of the parameter, stop and return the array.
# If the amount of numbers in the array is less than the number of the parameter add the last two numbers in the array and store that number in the array.
# Check the array again to see how many numbers are in it.

def fib(integer)
	array = [0, 1]
	until array.length == integer
	array << array[-1] + array[-2]
	end
	p array
end

fib(100)

# Output
# The array should fill in according to the parameter based on our fibonacci alogrithm.