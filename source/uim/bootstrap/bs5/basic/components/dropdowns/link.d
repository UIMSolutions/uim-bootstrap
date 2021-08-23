module uim.bootstrap.bs5.basic.components.dropdowns.link;

import uim.bootstrap;

@safe: class DBS5DropdownLink : DBS5Obj {
	mixin(H5This!("A", ["dropdown-item"]));
}
mixin(H5Calls!"BS5DropdownLink");

unittest {
	
}
