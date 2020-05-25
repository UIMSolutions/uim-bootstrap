module uim.bootstrap.components.cards.deckwrapper;

import uim.bootstrap;

class DBS4CardDeckwrapper : DBS4Obj {
	mixin(H5This!("DIV", ["card-deck-wrapper"]));
}
mixin(H5Calls!"BS4CardDeckwrapper");

unittest {
	assert(Assert(BS4CardDeckwrapper,`<div class="card-deck-wrapper"></div>`));
}
