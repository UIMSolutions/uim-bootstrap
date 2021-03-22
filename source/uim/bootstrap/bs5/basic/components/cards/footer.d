﻿module uim.bootstrap.bs5.basic.components.cards.footer;

import uim.bootstrap;

@safe: class DBS5CardFooter : DBS5Obj {
	mixin(H5This!("Div", ["card-footer"]));
}

mixin(H5Calls!"BS5CardFooter");
unittest {
	assert(Assert(BS5CardFooter,`<div class="card-footer"></div>`));
}
