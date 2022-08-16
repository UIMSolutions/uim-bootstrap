module uim.bootstrap.bs5.basic.components.accordions.body_;

@safe: 
import uim.bootstrap;

class DBS5AccordionBody : DBS5Obj {
	mixin(H5This!("Div", ["accordion-body"]));
}
mixin(H5Calls!("BS5AccordionBody"));

version(test_uim_bootstrap) { unittest {
	assert(BS5AccordionBody);
	assert(BS5AccordionBody == `<div class="accordion-body"></div>`);
}

