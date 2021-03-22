module uim.bootstrap.bs5.basic.components.accordions.collapse;

import uim.bootstrap;

@safe: class DBS5AccordionCollapse : DBS5Obj {
	mixin(H5This!("Div", ["accordion-collapse"]));
	mixin(MyContent!("body_", "BS5AccordionBody"));
}
mixin(H5Calls!("BS5AccordionCollapse"));

unittest {
	assert(Assert(BS5AccordionCollapse,`<div class="accordion-collapse"></div>`));
}


