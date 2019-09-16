module uim.bootstrap.components.cards.deck;

import uim.bootstrap;

/// The BS4CardDeck creates a grid of cards that are of equal height and width
class DBS4CardDeck : DBS4Obj
{
	mixin(H5This!("DIV", `["card-deck"]`));
	override public void _init()
	{
		super._init;
	}
	/// Add card 
	mixin(MyContent!("card", "BS4Card"));
	///
	unittest
	{
		assert(BS4CardDeck.card == `<div class="card-deck"><div class="card"></div></div>`);
	}
}

mixin(BS4Short!"CardDeck");

unittest
{
	assert(BS4CardDeck == `<div class="card-deck"></div>`);
}
