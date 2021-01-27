module uim.bootstrap.bs5.classes.simple.components.dropdowns.text;

import uim.bootstrap;

class DBS5DropdownText : DBS5Obj {
	mixin(H5This!("p", null, null));
}
mixin(H5Calls!"BS5DropdownText");

unittest {
	assert(Assert(BS5DropdownText("Hallo"), `<p>Hallo</p>`));
}
