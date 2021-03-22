module source.uim.bootstrap.bs5.basic.components.dropdowns.list;

import uim.bootstrap;

@safe: class DBS5DropdownList : DBS5Obj {
	mixin(H5This!("ul", ["dropdown-menu"]));

}
mixin(H5Calls!"BS5DropdownList");

unittest {
	assert(Assert(BS5DropdownList, `<ul class="dropdown-menu"></ul>`));
}
