﻿module uim.bootstrap.bs5.basic.components.collapses.collapse;

import uim.bootstrap;

@safe: class DBS5Collapse : DBS5Obj {
	mixin(H5This!("Div", ["collapse"]));
}
mixin(H5Calls!"BS5Collapse");

unittest {
	assert(Assert(BS5Collapse,`<div class="collapse"></div>`));
}