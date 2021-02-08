module uim.bootstrap.bs5.basic.components.accordions.header;

import uim.bootstrap;

class DBS5AccordionHeader : DBS5Obj {
	mixin(H5This!("H2", ["accordion-header"]));
}
mixin(H5Calls!("BS5AccordionHeader"));

unittest {
	assert(Assert(BS5AccordionHeader,`<h2 class="accordion-header"></h2>`));
}

