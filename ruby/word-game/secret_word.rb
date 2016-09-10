# Pseudocode

# create a game class
# define a method that stores a secret word that player 1 inputs when the game is initialized
	# this method should store the word as an array of strings
	# each string should represent one letter of the word
# define a method that stores letters that player 2 inputs
	# this method should store the letter as a string in an array
# define a method that limits the guesses player 2 has
	# the number of guesses is equal to twice the length of the word given by player 1
# define a method that checks the letter player 2 enters
	# if the letter hasn’t been guessed, the method reduces the guesses player 2 has by 1
	# otherwise, the number of guesses isn’t reduced
# define a method that shows the current state of the word given by player 1
	# the method should start out by showing a string of underscores
	# each underscore represents a letter in the word
	# the method should reveal all letters correctly guessed by player 2
# define a method that lets player 2 know he or she won the game
	# the method should show the correctly guessed word
	# the method should also show a message saying ‘you win!’
# define a method that lets player 2 know he or she lost the game
	# the method should show the incomplete word player 2 guessed
	# the method should also show a message saying ‘you lose!’

class Word_Game
	attr_accessor :guessed_letter

	def initialize(secret_word)
		@secret_word = secret_word
		@guessed_letter = ""
	end

	def store_secret_word
		@secret_word.split('')
	end

	def store_guessed_letters(guessed_letter)
		@guessed_letter = guessed_letter
		guessed_letters = []
		guessed_letters << @guessed_letter
	end

	def limit_guesses
		@secret_word.length * 2
	end

	def check_letter
		if !store_guessed_letters.include?(@guessed_letter)
			limit_guesses - 1
		else
			limit_guesses
		end
	end
end









