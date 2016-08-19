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

# Ask the user if he or she would like to make a dragon.
puts "Would you like to make a dragon? (y/n)"
answer = gets.chomp
Dragon.new if answer == "y"

# Ask the user for a dragon name.

# Ask the user for the color of each dragon he or she would like to create.