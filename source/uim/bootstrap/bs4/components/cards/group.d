module uim.bootstrap.bs4.components.cards.group;

import uim.bootstrap;

/// The BS4CardGroup creates a grid of cards that are of equal height and width, and no margin between cards
@safe: class DBS4CardGroup : DBS4Obj {
	mixin(H5This!("DIV", ["card-group"]));

	/// Add card 
	mixin(MyContent!("card", "BS4Card"));
	O card(this O)(DBS4Card[] cards) { foreach(c; cards) this.card(c); return cast(O)this; }
	unittest {
		assert(Assert(BS4CardGroup.card, `<div class="card-group"><div class="card"></div></div>`));
	}
}
mixin(H5Calls!"BS4CardGroup");
unittest {
	assert(Assert(BS4CardGroup, `<div class="card-group"></div>`));
}
