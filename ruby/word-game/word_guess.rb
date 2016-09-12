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
# Then the game will show player 2 the latest version of the hidden word.
# Then the game will show player 2 how many guesses he or she has left.
# Then the game will ask player 2 for another letter.
# The game will store this letter.
# The game will check to see if this letter has been guessed before.
	# If player 2 entered a letter he or she has guessed before, prompt the player to enter another letter. Then store that letter. The game will check to see if the letter is in the secret word.
		# If the letter is in the secret word, replace the corresponding underscores in the hidden word.
		# The game will show player 2 an updated version of the hidden word.

# Repeat this process until there are no more letters to guess or if player 2 runs out of guesses
	# If there are no more letters to guess, tell player 2 he or she won.
	# If player 2 runs out of guesses, tell him or her she lost.

# Exit the game


# ========================================
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

	def lose
		"Sorry, you don't have any guesses left. You lose. =("
	end

	def guessed_before(char)
		if @guessed_letters.include?(char)
			"Sorry, you guessed '#{char}' before, please enter another letter:"
		else
			successful_letter(char)
		end
	end
end


# ========================================
# USER INTERFACE

puts "It's time to play 'Guess that Word'!!!"
puts "Alright Player 1, please enter a secret word:"
secret_word = gets.chomp
word_guess = Game.new(secret_word)

puts "Okay Player 2, here's your hidden word '#{word_guess.hidden_word}'."

puts "You have #{word_guess.guesses} guesses to win the game. Good luck!"

puts "Please enter a letter you'd like to guess:"
letter = gets.chomp
word_guess.store_letters(letter)
word_guess.successful_letter(letter)

loop do
	puts "Okay Player 2, here are the letters you've guessed so far...#{word_guess.guessed_letters}."
	puts "'#{word_guess.hidden_word}'"
	puts "You have #{word_guess.guesses - 1} guesses to win the game. Good luck!"
	puts "Please enter another letter you'd like to guess."
	next_letter = gets.chomp
	word_guess.guessed_before(next_letter)
	break if !word_guess.hidden_word.include?("_") || word_guess.guesses == 0
end



# ========================================
# until !word_guess.hidden_word.include?("_") || word_guess.guesses == 0
# 	puts "Okay Player 2, here are the letters you've guessed so far...#{word_guess.guessed_letters}."
# 	puts "'#{word_guess.hidden_word}'"
# 	puts "You have #{word_guess.guesses - 1} guesses to win the game. Good luck!"
# 	puts "Please enter another letter you'd like to guess."
# 	next_letter = gets.chomp

# 	if word_guess.guessed_letters.include?(next_letter)
# 		puts "Sorry, you picked that letter before. Please enter another letter:"
# 		another_letter = gets.chomp
# 		word_guess.store_letters(another_letter)
# 		word_guess.successful_letter(another_letter)
# 		puts "'#{word_guess.hidden_word}'"
# 		puts "Please enter another letter you'd like to guess."
# 		if !word_guess.hidden_word.include?("_")
# 			word_guess.win
# 		else
# 			puts "'#{word_guess.hidden_word}'"
# 			puts "You have #{word_guess.guesses - 2} guesses to win the game. Good luck!"
# 			puts "Please enter another letter you'd like to guess."
# 			next_letter = gets.chomp
# 			if word_guess.guesses == 0
# 				puts "You guessed '#{word_guess.hidden_word}'"
# 				word_guess.lose
# 			end
# 		end
# 	else
# 		word_guess.store_letters(next_letter)
# 		word_guess.successful_letter(next_letter)
# 		puts "'#{word_guess.hidden_word}'"
# 		puts "You have #{word_guess.guesses} guesses to win the game. Good luck!"
# 		puts "Please enter another letter you'd like to guess."
# 		if !word_guess.hidden_word.include?("_")
# 			word_guess.win
# 		else
# 			puts "'#{word_guess.hidden_word}'"
# 			puts "You have #{word_guess.guesses - 2} guesses to win the game. Good luck!"
# 			puts "Please enter another letter you'd like to guess."
# 			next_letter = gets.chomp
# 			if word_guess.guesses == 0
# 				puts "You guessed '#{word_guess.hidden_word}'"
# 				word_guess.lose
# 			end
# 		end
# 	end
# end