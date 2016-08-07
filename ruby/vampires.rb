# Vampire Detection Survey

# Ask how many employees will be processed.

puts "How many employees do you want to process?"
employee_surveys = gets.chomp.to_i

# Start the first survey and repeat the process until the number of surveys requested is complete.

employee_surveys = 1

loop do
	employee_surveys += 1

# Ask the user his or her name. Set the input as the value for name variable.

puts "What's your name?"
name = gets.chomp

# Ask the user how old he or she will be this year. Set the input as the value for age variable. Change the value to an integer.

puts "How old will you be this year?"
age = gets.chomp.to_i

# Ask the user what year he or she was born in. Set the input as the value for birth year variable. Change the value to an integer.

puts "What year where you born in?"
birth_year = gets.chomp.to_i

# Ask if the user wants garlic bread. Set the input as the value for garlic bread variable.

puts "Do you want garlic bread? (y/n)"
garlic_bread = gets.chomp

# Ask if the user wants health insurance. Set the input as the value for health insurnace variable.

puts "Do you want health insurance? (y/n)"
health_insurance = gets.chomp

# Check to see if the user's age and birth year match.

current_year = 2016
correct_age = current_year - birth_year

# Check to see if the user's age is correct, and if he or she wants garlic bread or health insurance. If the user's age is correct and the user wants either garlic bread or health insurance, print the result "Probably not a vampire."
# If the user's age is incorrect and he or she doesn't want garlic bread or health insurance, print the result "Probably a vampire.
# If the user's age is incorrect and he or she doesn't want garlic bread and health insurance, print the result, "Almost certainly a vampire."
# Check to see if the user input a name of either Drake Cula or Tu Fang. If so, print the result "Definitely a vampire."
# If the user inputs some other kind of data, print the result, "Results inconclusive."

if name == "Drake Cula"
	puts "Definitely a vampire."
	elsif name == "Tu Fang"
	puts "Definitely a vampire."
	elsif age == correct_age && (garlic_bread == "y" || health_insurance == "y")
	puts "Probably not a vampire."
	elsif age != correct_age && garlic_bread == "n" && health_insurance == "n"
	puts "Almost certainly a vampire."
	elsif age != correct_age && (garlic_bread == "n" || health_insurance == "n")
	puts "Probably a vampire."
else
	puts "Results inconclusive."
end

# Ask the user what he or she is allergic to.

puts "What are you allergic to?"
input = gets.chomp

if input == "sunshine"
	puts "Probably a vampire."
end

until input == "done"
	puts "What else are you allergic to? If nothing, type 'done'."
	input = gets.chomp
	if input == "sunshine"
		puts "Probably a vampire."
	end
end

puts "Thanks."
	
	break if employee_surveys > 2
end

print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."