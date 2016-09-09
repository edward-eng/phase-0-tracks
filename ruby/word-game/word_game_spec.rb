require_relative 'word_game'

describe Word_Guesser do
	let(:game) { Word_Guesser.new("kaladesh", "a") }

	it "stores the word User_1 inputted upon initialization" do
		expect(game.key_word).to eq "kaladesh"
	end

	it "keeps track of how many guesses User_2 has left" do
		expect(game.guesses_allowed_counter).to eq 16
	end

	it "stores the letter User_2 inputted" do
		expect(game.store_letter).to eq "a"
	end

	it "determines a number of underscores based on the length of the word User_1 inputted" do
		expect(game.hidden_word).to eq "________"
	end

	it "matches any instances of the letter within the inputted word" do
		expect(game.find_index).to eq [1, 3]
	end

	it "replaces the corresponding underscore(s) of the matched letters in the hidden word" do
		expect(game.show_letter).to eq "_a_a____"
	end

	it "calculates how many guesses User_2 has left" do
		expect(game.guesses_left).to eq 15
	end

	it "determines if User_2 wins the game" do
		expect(game.win).to eq "kaladesh"
	end

	it "determins if User_2 loses the game" do
		expect(game.lose).to eq "kala___h"
	end
end