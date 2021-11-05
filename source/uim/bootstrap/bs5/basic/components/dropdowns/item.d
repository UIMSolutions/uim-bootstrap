module uim.bootstrap.bs5.basic.components.dropdowns.item;

import uim.bootstrap;

@safe: class DBS5DropdownItem : DBS5Obj {
	mixin(H5This!("div", ["dropdown-item"]));
}
mixin(H5Calls!"BS5DropdownItem");

unittest {
	
}
