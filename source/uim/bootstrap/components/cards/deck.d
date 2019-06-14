module uim.bootstrap.components.cards.deck;

import uim.bootstrap;

class DBS4CardDeck : DBS4Obj {
	mixin(H5This!("DIV", `["card-deck"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4CardDeck");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4CardDeck == `<div class="card-deck"></div>`);
}
