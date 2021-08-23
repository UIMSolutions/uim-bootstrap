module uim.bootstrap.bs5.basic.components.accordions.body_;

import uim.bootstrap;

@safe: class DBS5AccordionBody : DBS5Obj {
	mixin(H5This!("Div", ["accordion-body"]));
}
mixin(H5Calls!("BS5AccordionBody"));

unittest {
	assert(Assert(BS5AccordionBody,`<div class="accordion-body"></div>`));
}

