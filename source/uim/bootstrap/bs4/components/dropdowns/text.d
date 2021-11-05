module uim.bootstrap.bs4.components.dropdowns.text;

import uim.bootstrap;

@safe: class DBS4DropdownText : DBS4Obj {
	mixin(H5This!("p", null, null));
}
mixin(H5Calls!"BS4DropdownText");

unittest {
	assert(Assert(BS4DropdownText("Hallo"), `<p>Hallo</p>`));
}
