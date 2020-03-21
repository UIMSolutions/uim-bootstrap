module uim.bootstrap.components.dropdowns.menu;

import uim.bootstrap;

class DBS4DropdownMenu : DBS4Obj {
	mixin(H5This!("UL", ["dropdown-menu"]));

	mixin(MyAttribute!("label", "aria-labelledby"));

	mixin(MyContent!("divider", "BS4DropdownDivider"));
	mixin(MyContent!("header", "BS4DropdownHeader"));
	mixin(MyContent!("item", "BS4DropdownItem"));
}
mixin(H5Calls!"BS4DropdownMenu");

unittest {
	assert(Assert(BS4DropdownMenu, `<ul class="dropdown-menu"></ul>`));
}
