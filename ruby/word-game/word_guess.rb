# Pseudocode - secret word guessing game


# The game will start out by greeting the players.
# Then the game will ask player 1 for a secret word.
# It’ll store the secret word.


# Then the game will show player 2 a hidden word.
# The hidden word will contain underscores each representing a letter of the secret word.


# Then the game will tell player 2 how many guesses he or she has to win the game.
# The number of guesses is equal to twice the length of the secret word.
# Then the game will ask player 2 for a letter.
# The game will store this letter.


# Then the game will check to see if the letter is in the secret word.
	# If the letter is in the word, replace the corresponding underscores with the letter.
# The game will show player 2 an updated version of the hidden word.


# The game will show player 2 the letters that he or she has guessed so far.
# Then the game will ask player 2 for another letter.
	# If player 2 enters a letter he or she has guessed before, prompt the player to enter another letter.
	# Otherwise, store the letter.
# The game will check to see if the letter is in the secret word.
	# If the letter is in the word, update the latest version of the hidden word to replace all corresponding underscores.
	# If there are no more letters to guess, print a message showing the player the correctly guessed word and a message saying ‘you win!’
	# Otherwise, show the player an updated version of the hidden word and ask the player for another letter.


# Repeat this process until the user wins the game or runs out of guesses.
	# If the player runs out of guesses, print a message showing the last updated version of the hidden word and message saying ‘you lose!’


# Exit the game

class Game
	attr_reader :secret_word, :letter_entered, :secret_word_array
	attr_accessor :hidden_word, :guesses, :guessed_letters

	def initialize(secret_word)
		@secret_word = secret_word
		@hidden_word = "_" * @secret_word.length
		@guesses = @secret_word.length * 2
		@guessed_letters = []
		@secret_word_array = @secret_word.split('')
	end

	def store_letters(letter)
		@letter_entered = letter
		@guessed_letters << @letter_entered
	end

	def successful_letter(char)
		@indices = []
		@secret_word_array.each_with_index do |letter, i|
			@indices << i if letter == char
  		end
  		@indices

  		@indices.each do |i|
  			@hidden_word[i] = char
  		end
  		@hidden_word
	end

	def win
		"You correctly guessed '#{@secret_word}'. Congrats, you win!"
	end
end