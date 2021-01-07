module uim.bootstrap.bs4.components.collapses.collapse;

import uim.bootstrap;

class DBS4Collapse : DBS4Obj {
	mixin(H5This!("Div", ["collapse"]));
}
mixin(H5Calls!"BS4Collapse");

unittest {
	assert(Assert(BS4Collapse,`<div class="collapse"></div>`));
}