module uim.bootstrap.bs4.components.dropdowns.button;

import uim.bootstrap;

@safe: class DBS4DropdownButton : DBS4Obj {
	mixin(H5This!("button", ["dropdown-item"]));
}
mixin(H5Calls!"BS4DropdownButton");

unittest {
	
}
