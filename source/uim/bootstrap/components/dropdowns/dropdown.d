module uim.bootstrap.components.dropdowns.dropdown;

import uim.bootstrap;

class DBS4Dropdown : DBS4Obj {
	mixin(H5This!("DIV", `["dropdown"]`));
	override public void init() {
		super.init;
	}	
	mixin(MyContent!("menu", "BS4DropdownMenu"));
	mixin(MyContent!("toggleLink", "BS4ToggleLink"));
}
mixin(H5Short!"BS4Dropdown");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4Dropdown == `<div class="dropdown"></div>`);
	assert(BS4Dropdown.id("id") == `<div id="id" class="dropdown"></div>`);

}
