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
# If User_2 types in a letter he or she already typed in before, disgread this guess and makes sure it doesn't deduct from the number of guesses User_2 has left
# Let User_2 know how many guesses he or she has left
# If User_2 guesses all the letters correctly before he or she runs out of guesses, print a message showing the correctly guessed word and 'you win!'
# Otherwise, print a message showing User_2 the word he or she guessed and 'you fail!' when User_2 runs out of guesses

class Word_Guesser
	attr_reader :is_over

	def initialize(inputted_word, inputted_letter)
		@guess_word = inputted_word
		@letter = inputted_letter
		@is_over = false
	end

	def key_word
		@guess_word.split('')
	end

	def guesses_allowed_counter
		guesses_allowed = @guess_word.length * 2
		guesses_allowed
	end

	def store_letter
		letters_guessed = []
		letters_guessed << @letter
		letters_guessed
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
		if store_letter.include?(letter)
			guesses_left
		end 
	end

	def win
		if (guesses_allowed_counter > 0) && (!show_letter.include?("_"))
		end
		"You correctly guessed #{@guess_word}. You win!"
	end

	def lose
		if (guesses_left = 0) && (show_letter.include?("_"))
		end
		"You guessed #{show_letter} and are out of guesses. Sorry, you lose! =("
	end
end

# USER INTERFACE

# introduce the game
puts "It's Word Guesser time!!!"

# ask player 1 for a word
puts "Player 1, please enter a word to guess:"
word = gets.chomp

# ask player 2 for a letter
puts "Alright Player 2, it's your turn. Please enter a letter:"
letter = gets.chomp
game = Word_Guesser.new(word, letter)

# show player 2 a string of letters and underscores
# it should be the length of the word player 1 gave
# it should show any matches of the letter player 2 gave
puts "Your result is: #{game.show_letter}"

# show player 2 how many guesses he or she has left
puts "You have #{game.guesses_left} guesses left."

# ask player 2 for another letter
# add this letter to list of letters he or she has guessed
# check the word player 1 gave to see if it has this letter player 2 gave
# if its in the the word, reveal the letter
# show player 2 an updated string with all the correctly guessed letters so far and underscores for all the letters that haven't been guessed yet
# the string should show any correctly guessed letters from before and any matches of the letter player 2 gave this time
puts "Please enter another letter:"
next_letter = gets.chomp
game.store_letter << next_letter



# DRIVER CODE
# word = Word_Guesser.new('kaladesh', 'a')
# p word.key_word
# p word.guesses_allowed_counter
# p word.store_letter
# p word.hidden_word
# p word.find_index
# p word.show_letter