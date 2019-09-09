module uim.bootstrap.components.cards.deck;

import uim.bootstrap;

class DBS4CardDeck : DBS4Obj {
	mixin(H5This!("DIV", `["card-deck"]`));
	override public void _init() {
		super._init;
	}
}
mixin(BS4Short!"CardDeck");

unittest {
	
	
	assert(BS4CardDeck == `<div class="card-deck"></div>`);
}
