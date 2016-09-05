# New Work

# Write a method that takes a real name (first and last names).
# Then swap the first and last names.
# Then split up all the letters of the first and last names.
# Then store each one of those lettters in an array.
# Then change all the vowels to the next vowel.
# If the vowel is a 'u', then change it to an 'a'.
# Then change all the consonants to the next consonant.
# If the consonant is a 'z', then change it to an 'a'.

# User Interface
loop do
	puts "Do you want to scramble a name? (yes or 'q' for quit)"
	input = gets.chomp
	break if input == 'q'

# Ask the user for his or her first name.
puts "Please enter first name:"

# Get the response and store it in a variable called <first_name>.
first_name = gets.chomp

# Ask the user for his or her last name.
puts "Please enter last name:"

# Get the response and store it in a variable called <last_name>.
last_name = gets.chomp

def fake_name(real_name)

	vowels = ['a', 'e', 'i', 'o', 'u']

	consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

		swap_name = real_name.reverse
		join_name = swap_name.join(' ')
		join_name = join_name.downcase
		split_name = join_name.split('')
		split_name.map! do |letter|
			if vowels.include?(letter)
				if letter == "u"
					letter = "a"
				else
					vowels.index(letter)
					vowels[vowels.index(letter) + 1]
				end
			elsif consonants.include?(letter)
				if letter == "z"
						letter = "a"
				else
						consonants.index(letter)
						consonants[consonants.index(letter) + 1]
				end
			else
				letter
			end
		end
		result = split_name.join('')
		join_real_name = real_name.join(' ')
		puts "#{join_real_name} is #{result}."
end

fake_name(["#{first_name}", "#{last_name}"])

end

# ================================================

# Old Work

# Fake Name Generator

# User Interface

loop do
	puts "Do you want to scramble a name? (yes or 'q' for quit)"
	input = gets.chomp
	break if input == 'q'

# Ask the user for his or her first name.
puts "Please enter first name:"

# Get the response and store it in a variable called <first_name>.
first_name = gets.chomp

# Ask the user for his or her last name.
puts "Please enter last name:"

# Get the response and store it in a variable called <last_name>.
last_name = gets.chomp

# Business Logic

# Add the first and last name variables together with a space between them and store the result in another variable called <full_name>.
full_name = "#{[first_name, last_name].join(' ')}"

# Break the <full_name> up into two strings and store the result in an array. Then store the array in a new variable called <split_name>.
split_name = full_name.split

# Take the <split_name> and swap the first and last names and store the result in a new variable called <swap_name>.
swap_name = split_name.reverse

# Take the <swap_name> and convert it back to a string with a space between the two names and store the result in a new variable called <new_string_name>.
new_string_name = swap_name.join(' ')

# Take the <new_string_name> and break each name up into individual letters and store the result in an array. Then store that array in a new variable called <split_new_string_name>.
split_new_string_name = new_string_name.split('')

# Make a variable called <vowels> and store the array of vowels 'a, e, i, o, u' in the variable.
vowels = ['a', 'e', 'i', 'o', 'u']

# Make a variable called <consonants> and store the array of consonants 'b, c, d, f, g, h, j, k, l, m, n, p, q, r, s, t, v, w, x, y, z' in the variable.
consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

# Check to see whether each letter in <split_new_string_name> is a vowel or consonant.
# If the letter is a vowel, change it to the next vowel.
# If the letter is a consonant, change it to the next consonant.
split_new_string_name.map! do |letters|
	if vowels.include?(letters)
		if letters == 'u'
			letters = 'a'
		else
			vowels.index(letters)
			vowels[vowels.index(letters) + 1]
		end
	elsif consonants.include?(letters)
		if letters == 'z'
			letters = 'b'
		else
			consonants.index(letters)
			consonants[consonants.index(letters) + 1]
		end
	else
		letters
	end
end

# Print the result to the console.
# p split_new_string_name
fake_name = split_new_string_name.join('')
# p fake_name

puts "#{full_name} is also known as #{fake_name}."

end