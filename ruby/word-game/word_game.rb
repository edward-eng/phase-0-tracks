# Pseudocode

# User_1 Input: a word
# User_2 Input: a letter
# Output: A message telling User_2 what the correctly guessed word is and a message saying 'you won!' OR a message telling User_2 what he or she guessed and a message saying 'you fail!'

# Make a game class (completed)
# Ask User_1 to type in a word (implement in the user interface)
# Let User_2 know that he or she has a number of guesses that's equal to twice the length of the word (implement in the user interface)
# Show User_2 a hidden word with underscores each representing a letter in the word and a space between each underscore (implement in the user interface)
# Ask User_2 to type in a letter (implement in the user interface)
# If the letter is in the word, replace the underscore with that letter
# Show User_2 an updated version of the hidden word (implement in the user interface)
# If User_2 types in a letter he or she already typed in before, disgread this guess and makes sure it doesn't deduct from the number of guesses User_2 has left
# Let User_2 know how many guesses he or she has left (implement in the user interface)
# If User_2 guesses all the letters correctly before he or she runs out of guesses, print a message showing the correctly guessed word and 'you win!' (implement in the user interface)
# Otherwise, print a message showing User_2 the word he or she guessed and 'you fail!' when User_2 runs out of guesses (implement in the user interface)

class Word_Guesser
	def initialize(inputted_word, inputted_letter)
		@guess_word = inputted_word
		@letter = inputted_letter
	end

	def key_word
		@guess_word
	end

	def guesses_allowed_counter
		guesses_allowed = @guess_word.length * 2
		guesses_allowed
	end

	def store_letter
		@letter
	end

	def hidden_word
		"_" * @guess_word.length
	end

	def find_index
		guess_word_array = @guess_word.split('')
		guess_word_array.each_index.select do |index|
			guess_word_array[index] == @letter
		end
	end

	def show_letter
		reveal_letter = @guess_word.split('')
		reveal_letter.map! do |letter_string|
			if letter_string == @letter
				@letter
			else
				"_"
			end
		end
		reveal_letter.join('')
	end

	def guesses_left
		guesses_allowed_counter - 1
	end

	def duplicate_letter(letter)
		if letter == @letter
			guesses_left
		end 
	end

	def win
		if show_letter.length < guesses_left
			"kaladesh"
		end
	end

	def lose
		if guesses_left = 0
			"kala___h"
		end
	end
end

# Driver Code
# word = Word_Guesser.new('kaladesh', 'a')
# p word.key_word
# p word.guesses_allowed_counter
# p word.store_letter
# p word.hidden_word
# p word.find_index
# p word.show_letter