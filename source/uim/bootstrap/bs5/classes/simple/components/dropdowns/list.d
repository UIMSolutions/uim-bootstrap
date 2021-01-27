module source.uim.bootstrap.bs5.classes.simple.components.dropdowns.list;

import uim.bootstrap;

class DBS5DropdownList : DBS5Obj {
	mixin(H5This!("ul", ["dropdown-menu"]));

}
mixin(H5Calls!"BS5DropdownList");

unittest {
	assert(Assert(BS5DropdownList, `<ul class="dropdown-menu"></ul>`));
}
