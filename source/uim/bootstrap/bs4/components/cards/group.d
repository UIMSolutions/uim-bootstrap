module uim.bootstrap.bs4.components.cards.group;

@safe: 
import uim.bootstrap;

/// The BS4CardGroup creates a grid of cards that are of equal height and width, and no margin between cards
class DBS4CardGroup : DBS4Obj {
	mixin(H5This!("DIV", ["card-group"]));

	/// Add card 
	mixin(MyContent!("card", "BS4Card"));
	O card(this O)(DBS4Card[] cards) { foreach(c; cards) this.card(c); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS4CardGroup.card, `<div class="card-group"><div class="card"></div></div>`);
	}
}
mixin(H5Calls!"BS4CardGroup");
version(test_uim_bootstrap) { unittest {
	assert(BS4CardGroup, `<div class="card-group"></div>`);
}
