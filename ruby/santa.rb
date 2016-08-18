class Santa
	def initialize(name, gender, ethnicity)
		puts "Initializing Santa instance ..."
		@name = name
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def about
		puts "Santa Name: #{@name}"
		puts "#{@name} is #{@gender}."
		puts "#{@name} is #{@ethnicity}."
		puts "#{@name} is #{@age} years old."
	end

	def speak(holiday_greeting)
		puts "#{@name} says, '#{holiday_greeting}'"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "And #{@name} says, thanks for the #{cookie_type}!"
	end
end

king_santa = Santa.new("Joe", "male", "Cantonese")
king_santa.about
king_santa.speak("Ho, ho, ho! Haaaappy holidays!" )
king_santa.eat_milk_and_cookies("snickerdoodle")