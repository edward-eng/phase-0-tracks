require_relative 'secret_word'

describe Word_Game do
	let (:game) { Word_Game.new('kaladesh')}
	
	it "stores the word player 1 gives when the game is initialized" do
		expect(game.store_secret_word).to eq ['k', 'a', 'l', 'a', 'd', 'e', 's', 'h']
	end

	it "stores letters that player 2 inputs" do
		expect(game.store_guessed_letters('a')).to eq ['a']
	end
end