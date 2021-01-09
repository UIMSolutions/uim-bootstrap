module uim.bootstrap.bs5.classes.components.collapses.collapse;

import uim.bootstrap;

class DBS5Collapse : DBS5Obj {
	mixin(H5This!("Div", ["collapse"]));
}
mixin(H5Calls!"BS5Collapse");

unittest {
	assert(Assert(BS5Collapse,`<div class="collapse"></div>`));
}