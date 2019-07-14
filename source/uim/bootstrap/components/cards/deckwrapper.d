module uim.bootstrap.components.cards.deckwrapper;

import uim.bootstrap;

class DBS4CardDeckWrapper : DBS4Obj {
	mixin(H5This!("DIV", `["card-deck-wrapper"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4CardDeckWrapper");

unittest {
	
	
	assert(BS4CardDeckWrapper == `<div class="card-deck-wrapper"></div>`);
}
