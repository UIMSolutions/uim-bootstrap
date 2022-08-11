module uim.bootstrap.bs5.basic.components.cards.deck;

@safe: 
import uim.bootstrap;

/// The BS5CardDeck creates a grid of cards that are of equal height and width
class DBS5CardDeck : DBS5Obj {
	mixin(H5This!("DIV", ["card-deck"]));

	/// Add card 
	mixin(MyContent!("card", "BS5Card"));
	O card(this O)(DBS5Card[] cards) { foreach(c; cards) this.card(c); return cast(O)this; }
	unittest {
		assert(BS5CardDeck.card, `<div class="card-deck"><div class="card"></div></div>`);
	}
}

mixin(H5Calls!"BS5CardDeck");
unittest {
	assert(BS5CardDeck, `<div class="card-deck"></div>`);
}
