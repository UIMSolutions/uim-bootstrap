module uim.bootstrap.components.dropdowns.dropdown;

import uim.bootstrap;

class DBS4Dropdown : DBS4Obj {
	mixin(H5This!("DIV", `["dropdown"]`));

	mixin(MyContent!("menu", "BS4DropdownMenu"));
	mixin(MyContent!("toggleLink", "BS4ToggleLink"));
}
mixin(BS4Short!"Dropdown");

unittest {
	assert(Assert(BS4Dropdown, `<div class="dropdown"></div>`));
	assert(Assert(BS4Dropdown.id("id"), `<div id="id" class="dropdown"></div>`));
}
