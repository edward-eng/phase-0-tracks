# Pseudocode

# create a game class
# define a method that stores a secret word that player 1 inputs when the game is initialized
	# this method should store the word as an array of strings
	# each string should represent one letter of the word
# define a method that stores letters that player 2 inputs
	# this method should store the letter as a string in an array
# define a method that limits the guesses player 2 has
	# the number of guesses is equal to twice the length of the word given by player 1
# define a method that checks the letter player 2 enters to see if he or she entered it before
	# if the letter hasn’t been guessed, the method reduces the guesses player 2 has by 1
	# otherwise, the number of guesses isn’t reduced
# define a method that shows the current state of the word given by player 1
	# the method should start out by showing a string of underscores equal to the number of letters in the word
	# each underscore represents a letter in the word
# define a method that checks the letter player 2 entered to see if it’s in the stored word
	# the method should iterate through stored word array
	# if the string matches the letter, return the index of that string
	# the method should return an array of all the indexes
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
		guessed_letters
	end

	def limit_guesses
		@secret_word.length * 2
	end

	def repeat_letter
		if store_guessed_letters(guessed_letter).include?(@guessed_letter) == true
			limit_guesses - 1
		else
			limit_guesses
		end
	end

	def current_word_state
		"_" * @secret_word.length
	end
end

# # Driver Code
# game = Word_Game.new('kaladesh')
# p game.store_secret_word
# p game.store_guessed_letters('a')
# p game.limit_guesses
# p game.repeat_letter
# p game.current_word_state