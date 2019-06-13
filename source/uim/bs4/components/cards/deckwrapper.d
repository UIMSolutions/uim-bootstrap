module uim.bs4.components.cards.deckwrapper;

import uim.bs4;

class DBS4CardDeckWrapper : DBS4Obj {
	mixin(H5This!("DIV", `["card-deck-wrapper"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4CardDeckWrapper");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4CardDeckWrapper == `<div class="card-deck-wrapper"></div>`);
}
