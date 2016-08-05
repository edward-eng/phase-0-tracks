# Vampire Detector

# record name
puts "What's your name?"
name = gets.chomp

# ask age
puts "How old will you be this year?"
age = gets.chomp

# ask birth year
puts "What year where you born?"
birth_year = gets.chomp.to_i

# find out if you like garlic bread
puts "Should we order garlic bread for you for lunch? (y/n)"
garlic_bread = gets.chomp

# enroll in health insurance
puts "Do you want to enroll in our health insurance plan? (y/n)"
health_insurance = gets.chomp

current_year = 2016

if age = current_year - birth_year
	age = true
else
	age = false
end

if age = true && garlic_bread == "y" || health_insurance == "y"
	puts "Probably not a vampire."
elsif age = false && garlic_bread == "n" || health_insurance == "n"
	puts "Probably a vampire."
elsif age = false && garlic_bread == "n" && health_insurance == "n"
else
	puts "Results inconclusive."
end

if name = "Drake Cula" || "Tu Fang"
	puts "Definitely a vampire."
end