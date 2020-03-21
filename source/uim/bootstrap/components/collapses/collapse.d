module uim.bootstrap.components.collapses.collapse;

import uim.bootstrap;

class DBS4Collapse : DBS4Obj {
	mixin(H5This!("Div", `["collapse"]`));
}
mixin(BS4Short!"Collapse");

unittest {
	assert(Assert(BS4Collapse,`<div class="collapse"></div>`));
}