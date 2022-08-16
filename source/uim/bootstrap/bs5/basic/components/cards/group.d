module uim.bootstrap.bs5.basic.components.cards.group;

@safe: 
import uim.bootstrap;

/// The BS5CardGroup creates a grid of cards that are of equal height and width, and no margin between cards
class DBS5CardGroup : DBS5Obj {
	mixin(H5This!("DIV", ["card-group"]));

	/// Add card 
	mixin(MyContent!("card", "BS5Card"));
	O card(this O)(DBS5Card[] cards) { foreach(c; cards) this.card(c); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS5CardGroup.card, `<div class="card-group"><div class="card"></div></div>`);
	}}
}
mixin(H5Calls!"BS5CardGroup");

version(test_uim_bootstrap) { unittest {
	assert(BS5CardGroup, `<div class="card-group"></div>`);
}}
