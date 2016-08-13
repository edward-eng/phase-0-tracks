# Magic: The Gathering Bookbag

mtg_bookbag = {
	water_bottle: ['water'],
	deckbox: {
		deck_name: 'Bant Coco',
		contents: {
			main_plus_side: 75,
			key_main_cards: ['Collected Company', 'Spell Queller', 'Reflector Mage', 'Noose Constrictor'],
			key_side_cards: ['Negate', 'Reality Smasher']
		}
	},
	binder: {
		binder_name: 'The Goods',
		contents: {
			blue_cards: 38,
			lands: 18,
			artifacts: 8,
			power_trades: ['Shocklands', 'Volcanic Island', 'Tolarian Academy'],
			quick_dumps: ['Fiery Temper']
		}
	},
	battle_gear: ['pen', 'paper', 'dice', 'playmat', 'extra sleeves']
}

p mtg_bookbag[:deckbox][:deck_name]
p mtg_bookbag[:battle_gear][3]
# p mtg_bookbag[:contents][:blue_cards]