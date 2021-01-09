module uim.bootstrap.bs5.classes.components.cards.block;

import uim.bootstrap;

class DBS5CardBlock : DBS5Obj {
	mixin(H5This!("DIV", ["card-block"]));
}

mixin(H5Calls!"BS5CardBlock");
unittest {
	assert(Assert(BS5CardBlock,`<div class="card-block"></div>`));
}
