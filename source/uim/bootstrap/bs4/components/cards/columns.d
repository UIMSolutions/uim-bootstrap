module uim.bootstrap.bs4.components.cards.columns;

@safe: 
import uim.bootstrap;

/// The .BS4CardColumns creates a masonry-like grid of cards (like pinterest)
class DBS4CardColumns : DBS4Obj {
	mixin(H5This!("DIV", ["card-columns"]));

	/// Add card 
	mixin(MyContent!("card", "BS4Card"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4CardDeck.card == `<div class="card-deck"><div class="card"></div></div>`);
	}}
}
mixin(H5Calls!"BS4CardColumns");
version(test_uim_bootstrap) { unittest {
	assert(BS4CardColumns == `<div class="card-columns"></div>`);
}}
