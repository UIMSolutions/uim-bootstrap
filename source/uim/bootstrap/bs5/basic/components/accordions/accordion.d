module uim.bootstrap.bs5.basic.components.accordions.accordion;

@safe: 
import uim.bootstrap;

class DBS5Accordion : DBS5Obj {
	mixin(H5This!("Div", ["accordion"]));

	mixin(MyContent!("item", "BS5AccordionItem"));
}
mixin(H5Calls!("BS5Accordion"));

version(test_uim_bootstrap) { unittest {
	assert(BS5Accordion);
	assert(BS5Accordion == `<div class="accordion"></div>`);

	assert(BS5Accordion.item == `<div class="accordion"><div class="accordion-item"></div></div>`);
}}

