module uim.bootstrap.components.cards.deckwrapper;

import uim.bootstrap;

class DBS4CardDeckWrapper : DBS4Obj {
	mixin(H5This!("DIV", `["card-deck-wrapper"]`));
	override public void _init() {
		super._init;
	}
}
mixin(BS4Short!"CardDeckWrapper");

unittest {
	
	
	assert(BS4CardDeckWrapper == `<div class="card-deck-wrapper"></div>`);
}
