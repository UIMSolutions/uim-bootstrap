module uim.bootstrap.bs4.components.dropdowns.form;

import uim.bootstrap;

@safe: class DBS4DropdownForm : DBS4Obj {
	mixin(H5This!("form", null, null));
}
mixin(H5Calls!"BS4DropdownForm");

unittest {
	assert(Assert(BS4DropdownForm, `<form></form>`));
}
