require_relative 'word_guess'

describe Game do
	let(:word_guess) { Game.new("kaladesh") }

	it "stores the secret word player 1 enters when the game is initialized" do
		expect(word_guess.secret_word).to eq "kaladesh"
	end

	it "shows player 2 a hidden word" do
		expect(word_guess.hidden_word).to eq "________"
	end

	it "tells player 2 how many guesses he or she has" do
		expect(word_guess.guesses).to eq 16
	end

	it "stores the letters player 2 enters" do
		expect(word_guess.store_letters("a")).to eq ["a"]
	end

	it "checks to see if the letter player 2 entered matches any letters of the secret word" do
		expect(word_guess.successful_letter("a")).to eq "_a_a____"
	end

	it "tells player 2 he or she won" do
		expect(word_guess.win).to eq "You correctly guessed 'kaladesh'. Congrats, you win!"
	end

	it "tells player 2 he or she lost" do
		expect(word_guess.lose).to eq "Sorry, you don't have any guesses left. You lose. =("
	end
end