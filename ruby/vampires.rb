# 1. Ask the user his or her name. Set the input as the value for name variable.

puts "What's your name?"
name = gets.chomp

# 2. Ask the user how old he or she will be this year. Set the input as the value for age variable. Change the value to an integer.

puts "How old will you be this year?"
age = gets.chomp.to_i

# 3. Ask the user what year he or she was born in. Set the input as the value for birth year variable. Change the value to an integer.

puts "What year where you born in?"
birth_year = gets.chomp.to_i

# 4. Ask if the user wants garlic bread. Set the input as the value for garlic bread variable.

puts "Do you want garlic bread? (y/n)"
garlic_bread = gets.chomp

# 5. Ask if the user wants health insurance. Set the input as the value for health insurnace variable.

puts "Do you want health insurance? (y/n)"
health_insurance = gets.chomp

# 6. Check to see if the user's age and birth year match.

current_year = 2016
correct_age = current_year - birth_year

# 7. Check to see if the user's age is correct, and if he or she wants garlic bread or health insurance. If the user's age is correct and the user wants either garlic bread or health insurance, print the result "Probably not a vampire."
# 8. If the user's age is incorrect and he or she doesn't want garlic bread or health insurance, print the result "Probably a vampire.
# 9. If the user's age is incorrect and he or she doesn't want garlic bread and health insurance, print the result, "Almost certainly a vampire."
# 10. Check to see if the user input a name of either Drake Cula or Tu Fang. If so, print the result "Definitely a vampire."
# 11. If the user inputs some other kind of data, print the result, "Results inconclusive."

if name == "Drake Cula" || "Tu Fang"
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