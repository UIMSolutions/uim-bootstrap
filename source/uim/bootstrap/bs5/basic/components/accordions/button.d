module uim.bootstrap.bs5.basic.components.accordions.button;

import uim.bootstrap;

class DBS5AccordionButton : DBS5Obj {
	mixin(H5This!("Button", ["accordion-button"], `["type":"button"]`));
}
mixin(H5Calls!("BS5AccordionButton"));

unittest {
	assert(Assert(BS5AccordionButton,`<button class="accordion-button" type="button"></button>`));
}
