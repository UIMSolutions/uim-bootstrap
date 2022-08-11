module uim.bootstrap.bs5.basic.components.cards.deckwrapper;

@safe: 
import uim.bootstrap;

class DBS5CardDeckwrapper : DBS5Obj {
	mixin(H5This!("DIV", ["card-deck-wrapper"]));
}
mixin(H5Calls!"BS5CardDeckwrapper");

unittest {
	assert(BS5CardDeckwrapper == `<div class="card-deck-wrapper"></div>`);
}
