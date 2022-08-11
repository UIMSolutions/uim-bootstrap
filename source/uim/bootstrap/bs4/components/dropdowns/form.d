module uim.bootstrap.bs4.components.dropdowns.form;

@safe: 
import uim.bootstrap;

class DBS4DropdownForm : DBS4Obj {
	mixin(H5This!("form", null, null));
}
mixin(H5Calls!"BS4DropdownForm");

unittest {
	assert(BS4DropdownForm, `<form></form>`));
}
