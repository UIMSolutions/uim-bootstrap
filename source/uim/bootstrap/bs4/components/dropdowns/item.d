﻿module uim.bootstrap.bs4.components.dropdowns.item;

import uim.bootstrap;

@safe: class DBS4DropdownItem : DBS4Obj {
	mixin(H5This!("div", ["dropdown-item"]));
}
mixin(H5Calls!"BS4DropdownItem");

unittest {
	
}
