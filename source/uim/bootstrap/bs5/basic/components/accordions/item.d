module uim.bootstrap.bs5.basic.components.accordions.item;

@safe: 
import uim.bootstrap;

class DBS5AccordionItem : DBS5Obj {
	mixin(H5This!("Div", ["accordion-item"]));
}
mixin(H5Calls!("BS5AccordionItem"));

unittest {
	assert(BS5AccordionItem,`<div class="accordion-item"></div>`));
}

