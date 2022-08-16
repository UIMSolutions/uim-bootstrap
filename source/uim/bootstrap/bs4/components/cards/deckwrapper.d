module uim.bootstrap.bs4.components.cards.deckwrapper;

@safe: 
import uim.bootstrap;

class DBS4CardDeckwrapper : DBS4Obj {
	mixin(H5This!("DIV", ["card-deck-wrapper"]));
}
mixin(H5Calls!"BS4CardDeckwrapper");

version(test_uim_bootstrap) { unittest {
	assert(BS4CardDeckwrapper == `<div class="card-deck-wrapper"></div>`);
}}
