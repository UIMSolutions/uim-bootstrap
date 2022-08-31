module uim.bootstrap.bs5.basic.components.dropdowns.form;

@safe: 
import uim.bootstrap;

class DBS5DropdownForm : DBS5Obj {
	mixin(H5This!("form", null, null));
}
mixin(H5Calls!"BS5DropdownForm");

version(test_uim_bootstrap) { unittest {
	assert(BS5DropdownForm == `<form></form>`);
}}
