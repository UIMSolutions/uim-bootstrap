module uim.bootstrap.bs5.basic.components.dropdowns.dropdown;

@safe: 
import uim.bootstrap;

class DBS5Dropdown : DBS5Obj {
	mixin(H5This!("DIV", ["dropdown"]));

	mixin(MyContent!("button", "BS5ToggleButton"));
	mixin(MyContent!("link", "BS5DropdownToggleLink"));
	mixin(MyContent!("menu", "BS5DropdownMenu"));
	mixin(MyContent!("toggleLink", "BS5DropdownToggleLink"));
}
mixin(H5Calls!"BS5Dropdown");

unittest {
	assert(BS5Dropdown, `<div class="dropdown"></div>`);
	assert(BS5Dropdown.id("abc"), `<div id="abc" class="dropdown"></div>`);
}
