module uim.bootstrap.bs5.classes.components.dropdowns.button;

import uim.bootstrap;

class DBS5DropdownButton : DBS5Obj {
	mixin(H5This!("button", ["dropdown-item"]));
}
mixin(H5Calls!"BS5DropdownButton");

unittest {
	
}
