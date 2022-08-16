module uim.bootstrap.bs5.basic.components.cards.columns;

@safe: 
import uim.bootstrap;

/// The .BS5CardColumns creates a masonry-like grid of cards (like pinterest)
class DBS5CardColumns : DBS5Obj {
	mixin(H5This!("DIV", ["card-columns"]));

	/// Add card 
	mixin(MyContent!("card", "BS5Card"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5CardDeck.card == `<div class="card-deck"><div class="card"></div></div>`);
	}}
}
mixin(H5Calls!"BS5CardColumns");

version(test_uim_bootstrap) { unittest {
	assert(BS5CardColumns == `<div class="card-columns"></div>`);
}}
