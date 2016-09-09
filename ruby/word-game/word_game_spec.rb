require_relative 'word_game'

describe Word_Guesser do
	let(:game) { Word_Guesser.new("kaladesh", "z") }

	it "stores the word User_1 inputted upon initialization" do
		expect(game.key_word).to eq "kaladesh"
	end

	it "keeps track of how many guesses User_2 has left" do
		expect(game.guesses_allowed_counter).to eq 8
	end

	it "stores the letter User_2 inputted" do
		expect(game.store_letter).to eq "z"
	end

	it "shows a hidden word with underscores each representing a letter in the word and spaces between each underscore" do
		expect(game.hidden_word).to eq "_ _ _ _ _ _ _ _"
	end
end