module uim.bootstrap.components.cards.group;

import uim.bootstrap;

/// The BS4CardGroup creates a grid of cards that are of equal height and width, and no margin between cards
class DBS4CardGroup : DBS4Obj {
	mixin(H5This!("DIV", `["card-group"]`));

	/// Add card 
	mixin(MyContent!("card", "BS4Card"));
	///
	unittest {
		assert(BS4CardGroup.card == `<div class="card-group"><div class="card"></div></div>`);
	}
}
mixin(BS4Short!"CardGroup");
///
unittest {
	assert(BS4CardGroup == `<div class="card-group"></div>`);
}
