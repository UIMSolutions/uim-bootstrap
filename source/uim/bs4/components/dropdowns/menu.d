module uim.bs4.components.dropdowns.menu;

import uim.bs4;

class DBS4DropdownMenu : DBS4Obj {
	mixin(H5This!("DIV", `["dropdown-menu"]`));
	override public void init() {
		super.init;
	}	
	mixin(MyAttribute!("label", "aria-labelledby"));
	mixin(MyContent!("header", "BS4DropdownHeader"));
	mixin(MyContent!("item", "BS4DropdownItem"));
}
mixin(H5Short!"BS4DropdownMenu");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4DropdownMenu == `<div class="dropdown-menu"></div>`);
}
