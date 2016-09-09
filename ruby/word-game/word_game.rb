# Pseudocode

# User_1 Input: a word
# User_2 Input: a letter
# Output: A message telling User_2 what the correctly guessed word is and a message saying 'you won!' OR a message telling User_2 what he or she guessed and a message saying 'you fail!'

# Make a game class
# Ask User_1 to type in a word
# Let User_2 know that he or she has a number of guesses that's equal to twice the length of the word
# Show User_2 a hidden word with underscores each representing a letter in the word and a space between each underscore
# Ask User_2 to type in a letter
# If the letter is in the word, replace the underscore with that letter
# Show User_2 an updated version of the hidden word
# Let User_2 know how many guesses he or she has left
# If User_2 guesses all the letters correctly before he or she runs out of guesses, print a message showing the correctly guessed word and 'you win!'
# Otherwise, print a message showing User_2 the word he or she guessed and 'you fail!' when User_2 runs out of guesses

class Word_Guesser
	def initialize(inputted_word, inputted_letter)
		@guess_word = inputted_word
		@letter = inputted_letter
	end

	def key_word
		@guess_word
	end

	def guesses_allowed_counter
		guesses_allowed = @guess_word.length
		guesses_allowed
	end

	def store_letter
		@letter
	end

	def hidden_word
		"_ " * (@guess_word.length - 1) + "_"
	end
end