module uim.bootstrap.bs4.components.dropdowns.header;

import uim.bootstrap;

class DBS4DropdownHeader : DBS4Obj {
	mixin(H5This!("H6", ["dropdown-header"]));
}
mixin(H5Calls!"BS4DropdownHeader");

unittest {
	
	
	assert(Assert(BS4DropdownHeader, `<h6 class="dropdown-header"></h6>`));
}
