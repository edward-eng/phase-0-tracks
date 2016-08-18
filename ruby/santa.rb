class Santa
	attr_reader :age, :ethnicity
	attr_accessor :name, :gender

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
		puts "#{@name}'s reindeer ranking is #{@reindeer_ranking}."
		puts "#{@name} is #{@age} years old."
	end

	def speak(holiday_greeting)
		puts "#{@name} says, '#{holiday_greeting}'"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "And #{@name} says thanks for the #{cookie_type}!"
	end

	def celebrate_birthday(age)
		@age + 1
		puts "#{@name} just had a birthday and is #{age} now."
	end

	def get_mad_at(reindeer_name)
		new_reindeer_ranking = @reindeer_ranking.rotate(1)
		puts "#{name} got mad at #{reindeer_name} and the new reindeer ranking is...#{new_reindeer_ranking}"
	end
end

king_santa = Santa.new("Joe", "male", "Cantonese")
king_santa.about
puts "#{king_santa.name} is a baby."
puts "#{king_santa.name} is #{king_santa.age} old and is #{king_santa.ethnicity}."
king_santa.speak("Ho, ho, ho! Haaaappy holidays!" )
king_santa.eat_milk_and_cookies("snickerdoodle")
king_santa.name = "Happy Joe"
puts "#{king_santa.name} says I'll be back next year!"
king_santa.celebrate_birthday(1)
king_santa.get_mad_at("Rudolph")