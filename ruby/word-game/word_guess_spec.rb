require_relative 'word_guess'

describe Game do
	let(:word_guess) { Game.new("kaladesh") }

	it "stores the secret word player 1 enters when the game is initialized" do
		expect(word_guess.secret_word).to eq "kaladesh"
	end

	it "shows player 2 a hidden word" do
		expect(word_guess.hidden_word).to eq "________"
	end
end