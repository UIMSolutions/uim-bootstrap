module uim.bootstrap.bs4.components.cards.block;

import uim.bootstrap;

@safe: class DBS4CardBlock : DBS4Obj {
	mixin(H5This!("DIV", ["card-block"]));
}

mixin(H5Calls!"BS4CardBlock");
unittest {
	assert(Assert(BS4CardBlock,`<div class="card-block"></div>`));
}
