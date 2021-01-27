module uim.bootstrap.bs5.classes.simple.components.cards.header;

import uim.bootstrap;


/// CardHeader adds a header to a card
class DBS5CardHeader : DBS5Obj {
	mixin(H5This!("DIV", ["card-header"]));
}
mixin(H5Calls!"BS5CardHeader");
unittest {
	assert(Assert(BS5CardHeader,`<div class="card-header"></div>`));
}
