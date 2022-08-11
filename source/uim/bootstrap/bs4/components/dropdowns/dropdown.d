module uim.bootstrap.bs4.components.dropdowns.dropdown;

@safe: 
import uim.bootstrap;

class DBS4Dropdown : DBS4Obj {
	mixin(H5This!("DIV", ["dropdown"]));

	mixin(MyContent!("menu", "BS4DropdownMenu"));
	mixin(MyContent!("toggleLink", "BS4ToggleLink"));
}
mixin(H5Calls!"BS4Dropdown");

unittest {
	assert(BS4Dropdown, `<div class="dropdown"></div>`));
	assert(BS4Dropdown.id("id"), `<div id="id" class="dropdown"></div>`));
}
