require_relative 'word_game'

describe Word_Guesser do
	let(:game) { Word_Guesser.new("word_to_guess") }

	it "stores the word_to_guess inputted by user upon initialization" do
	expect(game.key_word).to eq "word_to_guess"
	end
end