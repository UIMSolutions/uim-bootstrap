module uim.bootstrap.components.cards.header;

import uim.bootstrap;


/// CardHeader adds a header to a card
class DBS4CardHeader : DBS4Obj {
	mixin(H5This!("DIV", `["card-header"]`));
}
mixin(BS4Short!"CardHeader");
///
unittest {
	assert(BS4CardHeader == `<div class="card-header"></div>`);
}
