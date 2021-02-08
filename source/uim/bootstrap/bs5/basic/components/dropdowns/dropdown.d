module uim.bootstrap.bs5.basic.components.dropdowns.dropdown;

import uim.bootstrap;

class DBS5Dropdown : DBS5Obj {
	mixin(H5This!("DIV", ["dropdown"]));

	mixin(MyContent!("menu", "BS5DropdownMenu"));
	mixin(MyContent!("toggleLink", "BS5ToggleLink"));
}
mixin(H5Calls!"BS5Dropdown");

unittest {
	assert(Assert(BS5Dropdown, `<div class="dropdown"></div>`));
	assert(Assert(BS5Dropdown.id("id"), `<div id="id" class="dropdown"></div>`));
}
