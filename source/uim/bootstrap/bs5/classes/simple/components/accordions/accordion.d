module uim.bootstrap.bs5.classes.simple.components.accordions.accordion;

import uim.bootstrap;

class DBS5Accordion : DBS5Obj {
	mixin(H5This!("Div", ["accordion"]));

	mixin(MyContent!("item	", "BS5AccordionItem"));
}
mixin(H5Calls!("BS5Accordion"));

unittest {
	assert(Assert(BS5Accordion,`<div class="accordion"></div>`));
	assert(Assert(BS5Accordion.item,`<div class="accordion"><div class="accordion-item"></div></div>`));
}

