require_relative 'secret_word'

describe Word_Game do
	let (:game) { Word_Game.new('kaladesh') }
	
	it "stores the word player 1 gives when the game is initialized" do
		expect(game.store_secret_word).to eq ['k', 'a', 'l', 'a', 'd', 'e', 's', 'h']
	end

	it "stores letters that player 2 inputs" do
		expect(game.store_guessed_letters('a')).to eq ['a']
	end

	it "limits the number of guesses player 2 has" do
		expect(game.limit_guesses).to eq 16
	end

	it "checks the letter player 2 enters to see if it's been guessed before" do
		expect(game.repeat_letter).to eq 15
	end

	it "shows current state of word given by player 1" do
		expect(game.current_word_state).to eq "________"
	end

	it "checks the letter player 2 enters to see if the word player 1 entered contains the letter" do
		expect(game.letter_match('a')).to eq [1, 3]
	end

	it "reveals letters correctly guessed by player 2" do
		expect(game.reveal_letters('a')).to eq "_a_a____"
	end

	it "tells player 2 he or she won the game" do
		expect(game.win).to eq "You correctly guessed kaladesh. You win!"
	end
end