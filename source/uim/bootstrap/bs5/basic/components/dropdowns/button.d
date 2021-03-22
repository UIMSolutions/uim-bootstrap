module uim.bootstrap.bs5.basic.components.dropdowns.button;

import uim.bootstrap;

@safe: class DBS5DropdownButton : DBS5Obj {
	mixin(H5This!("button", ["dropdown-item"]));
}
mixin(H5Calls!"BS5DropdownButton");

unittest {
	
}
