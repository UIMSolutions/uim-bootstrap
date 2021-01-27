module uim.bootstrap.bs5.classes.simple.components.accordions.collapse;

import uim.bootstrap;

class DBS5AccordionCollapse : DBS5Obj {
	mixin(H5This!("Div", ["accordion-collapse"]));
}
mixin(H5Calls!("BS5AccordionCollapse"));

unittest {
	assert(Assert(BS5AccordionCollapse,`<div class="accordion-collapse"></div>`));
}


