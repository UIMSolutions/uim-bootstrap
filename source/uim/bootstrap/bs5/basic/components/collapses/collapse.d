module uim.bootstrap.bs5.basic.components.collapses.collapse;

@safe: 
import uim.bootstrap;

class DBS5Collapse : DBS5Obj {
	mixin(H5This!("Div", ["collapse"]));
}
mixin(H5Calls!"BS5Collapse");

unittest {
	assert(BS5Collapse,`<div class="collapse"></div>`);
}