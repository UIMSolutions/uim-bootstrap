﻿module uim.bootstrap.bs4.components.dropdowns.link;

import uim.bootstrap;

@safe: class DBS4DropdownLink : DBS4Obj {
	mixin(H5This!("A", ["dropdown-item"]));
}
mixin(H5Calls!"BS4DropdownLink");

unittest {
	
}
