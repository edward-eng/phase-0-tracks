class Santa
	def speak(string)
		puts string
	end

	def eat_milk_and_cookies(string)
		puts "That was a good #{string}!"
	end

	def initialize
		puts "Initializing Santa instance ..."
	end
end

king_santa = Santa.new

king_santa.speak("Ho, ho, ho! Haaaappy holidays!" )
king_santa.eat_milk_and_cookies("snickerdoodle")