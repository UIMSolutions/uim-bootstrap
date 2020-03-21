module uim.bootstrap.components.cards.deckwrapper;

import uim.bootstrap;

class DBS4CardDeckwrapper : DBS4Obj {
	mixin(H5This!("DIV", `["card-deck-wrapper"]`));
}
mixin(BS4Short!"CardDeckwrapper");

unittest {
	assert(Assert(BS4CardDeckwrapper,`<div class="card-deck-wrapper"></div>`));
}
