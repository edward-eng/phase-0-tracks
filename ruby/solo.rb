# SPECIES ------------------------
# fire-breathing dragon

# CHARACTERISTICS ----------------
# Friendly: no
# Eye count: 2
# Name: varies
# Color: varies

# BEHAVIOR -----------------------
# breathe fire
# hibernate
# fly

class Dragon
	attr_reader :eye_count, :friendliness
	attr_accessor :name, :color

	def initialize(name, color)
		puts "Initializing dragon instance..."
		@name = name
		@color = color
		@eye_count = 2
		@friendliness = false
	end

	def breathe_fire
		puts "WHOOOOOOMPH! *sizzle*"
	end

	def hibernate(hours)
		puts "#{@name} sleeps for #{hours} hours."
	end

	def fly(length)
		puts "#{@name} flies #{length} feet high."
	end
end

fire_breathing_dragon = Dragon.new("Kevin", "Green")
fire_breathing_dragon.breathe_fire
fire_breathing_dragon.hibernate(10)
fire_breathing_dragon.fly(10000)

# User Interface

dragons = []

end_program = false

until end_program == true

puts "Would you like to make a dragon? (y/n or 'q' for quit)"
input = gets.chomp

	if input == "y"
		puts "What's your dragon's name?"
		dragon_name = gets.chomp
		puts "What color is your dragon?"
		dragon_color = gets.chomp
		puts "How long does your dragon sleep for?"
		sleep = gets.chomp.to_i
		puts "How high does your dragon fly?"
		flight_height = gets.chomp.to_i
		dragon = Dragon.new(dragon_name, dragon_color)
		dragon.hibernate(sleep)
		dragon.fly(flight_height)
	elsif input == "n"
		end_program = true
	else
		input == "q"
		end_program = true
	end
	dragons << dragon
end

p dragons