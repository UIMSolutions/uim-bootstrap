module uim.bootstrap.bs5.basic.components.accordions.header;

@safe: 
import uim.bootstrap;

class DBS5AccordionHeader : DBS5Obj {
	mixin(H5This!("H2", ["accordion-header"]));

	mixin(MyContent!("button", "BS5AccordionButton"));
}
mixin(H5Calls!("BS5AccordionHeader"));

unittest {
	assert(BS5AccordionHeader,`<h2 class="accordion-header"></h2>`);
}

