module uim.bootstrap.bs5.basic.components.accordions.button;

@safe: 
import uim.bootstrap;

class DBS5AccordionButton : DBS5Obj {
	mixin(H5This!("Button", ["accordion-button"], `["type":"button"]`));
}
mixin(H5Calls!("BS5AccordionButton"));

version(test_uim_bootstrap) { unittest {
	assert(BS5AccordionButton);
	assert(BS5AccordionButton == `<button class="accordion-button" type="button"></button>`);
}}
