module uim.bootstrap.bs5.basic.components.accordions.item;

import uim.bootstrap;

@safe: class DBS5AccordionItem : DBS5Obj {
	mixin(H5This!("Div", ["accordion-item"]));
}
mixin(H5Calls!("BS5AccordionItem"));

unittest {
	assert(Assert(BS5AccordionItem,`<div class="accordion-item"></div>`));
}

