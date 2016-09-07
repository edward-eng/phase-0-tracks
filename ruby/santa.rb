class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end
end

# Driver Code

# mister_claus = Santa.new('male', 'unknown')
# mister_claus.speak
# mister_claus.eat_milk_and_cookies('chocolate chip')
# p mister_claus

# santas = []

# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# example_genders.length.times do |index|
# 	santas << Santa.new(example_genders[index], example_ethnicities[index])
# end

# p santas

puts "How many santas do you want to make?"
input = gets.chomp.to_i

binary_genders = ['male', 'female']

ethnicities = ['White', 'Black', 'Asian', 'Middle Easter', 'Latino']

santas = []

counter = 0

until counter == input
	santas << Santa.new(binary_genders.sample, ethnicities.sample)
	counter += 1
end

p santas

# ==============================

# Old Work

# class Santa
# 	attr_reader :age, :ethnicity
# 	attr_accessor :name, :gender

# 	def initialize(name, gender, ethnicity)
# 		puts "Initializing Santa instance ..."
# 		@name = name
# 		@gender = gender
# 		@ethnicity = ethnicity
# 		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
# 		@age = 0
# 	end

# 	def about
# 		puts "Santa Name: #{@name}"
# 		puts "#{@name} is #{@gender}."
# 		puts "#{@name} is #{@ethnicity}."
# 		puts "#{@name}'s reindeer ranking is #{@reindeer_ranking}."
# 		puts "#{@name} is #{@age} years old."
# 	end

# 	def speak(holiday_greeting)
# 		puts "#{@name} says, '#{holiday_greeting}'"
# 	end

# 	def eat_milk_and_cookies(cookie_type)
# 		puts "And #{@name} says thanks for the #{cookie_type}!"
# 	end

# 	def celebrate_birthday
# 		@age += 1
# 		puts "#{@name} just had a birthday and is #{age} now."
# 	end

# 	def get_mad_at(reindeer_name)
# 		new_reindeer_ranking = @reindeer_ranking.rotate(1)
# 		puts "#{name} got mad at #{reindeer_name} and the new reindeer ranking is...#{new_reindeer_ranking}"
# 	end
# end

# king_santa = Santa.new("Joe", "male", "Brazillian")
# king_santa.about
# puts "#{king_santa.name} is a baby."
# puts "#{king_santa.name} is #{king_santa.age} old and is #{king_santa.ethnicity}."
# king_santa.speak("Ho, ho, ho! Haaaappy holidays!" )
# king_santa.eat_milk_and_cookies("snickerdoodle")
# king_santa.name = "Happy Joe"
# puts "#{king_santa.name} says I'll be back next year!"
# king_santa.celebrate_birthday
# king_santa.get_mad_at("Rudolph")

# # Make an empty container for all the santas we create.
# santas = []

# # Make an array of names to choose from for each santa we create.
# names = ["Mary", "Kelly", "Jessica", "Bob", "Chris", "John"]

# # Make an array of example genders to choose from for each santa we create.
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

# # Make an arry of example ethnicities to choose from for each santa we create.
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# i = 0

# until i == 25
# 	age = rand(100)
# 	puts "Creating santa named #{names.sample} whose gender is #{example_genders.sample}, ethnicity is #{example_ethnicities.sample}, and is #{age}."
# 	# Choose a random number between 0 and 140.
# 	# Set this number to the new santa's age.
# 	i += 1
# end